#!/bin/bash

answer=""
default_answer="n"
toolchain_ver="2.1.2"
source_path="/shsv/DTV/Prj_QAS/04_Work/01_Prj_Benchmark/03_User/25_nghianguyen/Benchmark_3Q/2D3D_Benchmark/Yv2.23.0/Input/2D3D_APP"

# Choose application to build
while : 
do
	echo ""
	echo "Application list:"
	echo "1: IMG_SDK35"
	echo "2: Fillrate"
	echo "3: Fillrate_with_Texture"
	echo "4: IMG_SDK_GitHub"
	echo "5: IMG_MDK_OpenGLES"
	echo "6: API_Performance"
	echo "7: TextureMapping"
	echo ""
	read -p "Please input the number to build: " Appnumber
	read -p "Enter path of SDK toolchain to build: " sdk_dir
  case "$Appnumber" in
    1)
      appname="IMG_SDK35"
      break
      ;;
    2)
      appname="Fillrate"
      break
      ;;
    3)
      appname="Fillrate_with_Texture"
      break
      ;;
    4)
      appname="IMG_SDK_GitHub"
      break
      ;;
    5)
      appname="IMG_MDK_OpenGLES"
      break
      ;;
    6)
      appname="API_Performance"
      break
      ;;
    7)
      appname="TextureMapping"
      break
      ;;
    *)
      echo "Choose number less than 7 !"
      ;;
    esac
done

# Comfirm to build application

echo "You are about to install application "${appname}" using toolchain's path: ${sdk_dir}. Proceed[Y/n]? "
default_answer="y"
if [ "$answer" = "" ]; then
        read answer
        [ "$answer" = "" ] && answer="$default_answer"
else
        echo $answer
fi
if [ "$answer" != "Y" -a "$answer" != "y" ]; then
        echo "Installation aborted!"
        exit 1
fi

source $sdk_dir/environment-setup-aarch64-poky-linux
echo "Make the output directory Result "
mkdir -p Result

# Build Two app 6. API_Performance 7. TextureMapping with IMG_SDK3.5 BuildEnv
if [ "$Appnumber" = "6" ] || [ "$Appnumber" = "7"  ]; then
  read -p "Enter path to IMG_SDK3.5 build directory ex) ./IMG_SDK3.5: " sdk_dir
	tar xvf ${source_path}/${appname}.tar.bz2
	cd ${appname}
  bash ToolsEnv/build_tools.sh $sdk_dir .
  bash Scripts/build_apps.sh $sdk_dir ${path_to_SDK35}/BuildEnv
  bash Scripts/copy_bin.sh $toolchain_ver
else
# Build the other appplication
	tar xvf ${source_path}/${appname}.tar.bz2
	cd ${appname}
  # Prepare code for 1. IMG_SDK35 and 4. IMG_SDK_GitHub
  if [ "$Appnumber" = "1" ] || [ "$Appnumber" = "4" ]; then
	  bash Scripts/prepare_sourceCode.sh
  fi
  
  bash ToolsEnv/build_tools.sh $sdk_dir .
  # Patch file for 1. IMG_SDK35 4. IMG_SDK_GitHub 5. IMG_MDK_OpenGLES
  if [ "$Appnumber" = "5" ] || [ "$Appnumber" = "1" ] || [ "$Appnumber" = "4"  ]; then
    bash Scripts/apply_patch.sh
  fi
  bash Scripts/build_apps.sh $sdk_dir 
  bash Scripts/copy_bin.sh $toolchain_ver
fi

mv RunEnv_${appname}_${toolchain_ver}.tar.bz2 ../Result

echo "Get the output in directory ./Result"
