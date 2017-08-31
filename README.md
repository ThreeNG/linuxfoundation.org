#linuxfoundation.org

http://172.29.143.164:8080/projects/rvc-wayland-gen4/easy_gantt

to switch to terminal 12:
Code:

chvt 12


20170629_R-CarGen3_Simultaneous_Operation_E

20170706_R-CarGen3_ApplicationSwitchMeasurement_E.pptx

20170419_R-CarGen3_Boot-up_time_measurement_E.pptx

20170420_Summary_of_Driver_Initialize_Time_E.xlsx

20170615_Summary_of_Driver_Resume_Time_r4_E.xlsx

service lightdm start

and switch to gui by Ctrl+Alt+F7

If for some reason you want to revert to original settings, just run command below in terminal:

sudo mv /etc/default/grub.orig /etc/default/grub && sudo update-grub


sudo nano /etc/init/tty1.conf to open init file for TTY1 (notice that TTY1 is just an example, could be whichever you choose) . Change line

exec /sbin/getty -8 38400 tty1

to

exec /sbin/getty --autologin userName    -8 38400 tty1


lsblk 
http://www.jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html

https://www.facebook.com/computerhope/


https://github.com/renesas-rcar

https://www.computerhope.com/shortcut/excel.htm

what version of the Linux kernel you are running, use the uname command.

uname -a


find . -maxdepth 3

Mã Đặt Chỗ
AXMAEO
 VN 1372: TP. Hồ Chí Minh (SGN) > Huế (HUI)
 02 Thg 12 - 11:00 AM
  VN 1377: Huế (HUI) > TP. Hồ Chí Minh (SGN)
05 Thg 12 - 08:00 PM



Hành lý ký gửi không có người nhận

Vietnam Airlines sẽ lưu giữ hành lý ký gửi không có người nhận trong vòng 90 ngày và sẽ được tính phí lưu giữ. Sau thời hạn 90 ngày, Vietnam Airlines sẽ có toàn quyền quyết định đối với hành lý đó.
Địa chỉ liên hệ hành lý thất lạc tại sân bay Nội Bài và Tân Sơn Nhất

Tại sân bay quốc tế Nội Bài:
Quầy hành lý thất lạc tại tầng 1 sân bay quốc tế Nội Bài.
Điện thoại: (84-4)38840008 hoặc (84-4)38865002 bấm số 3134
E-mail: hl.viags@vietnamairlines.com; xld.viags@vietnamairlines.com

Tại sân bay quốc tế Tân Sơn Nhất:
Quầy hành lý thất lạc tại nhà ga T2 sân bay quốc tế Tân Sơn Nhất.
Điện thoại:(84-8) 35470415 hoặc (84-8) 38446665 bấm số 6062
E-mail: lostandfound.viags@vietnamairlines.com 

https://www.vietnamairlines.com/vn/vi/travel-information/baggage/special-baggage


https://www.dexterindustries.com/howto/run-a-program-on-your-raspberry-pi-at-startup/

/run/user/root

https://www.renesas.com/en-us/solutions/automotive.html

https://www.renesas.com/en-us/solutions/automotive/rcar-demoboard.html

du -hs *

 	autostart.service put in /etc/systemd/system

https://www.computerhope.com/issues/ch001638.htm


find -name "OGLES2*" -type f
ls -l | awk '{print $5}' | sort -n
grep processor /proc/cpuinfo
https://github.com/LITMUS-RT/cyclictest
/etc/init.d/networking restart
http://www.tutorialspoint.com/unix_commands/
http://www.denx.de/wiki/publish/Training2/Training2.html

https://rt.wiki.kernel.org/index.php/RT_PREEMPT_HOWTO

http://homepages.cwi.nl/~manegold/Calibrator/

http://www.embedded.com/electronics-blogs/beginner-s-corner/4023947/Introduction-to-Priority-Inversion

http://elinux.org/Benchmark_Programs

https://wiki.linuxfoundation.org/realtime/start

https://wiki.linuxaudio.org/wiki/lowlatency_deprecated

https://rt.wiki.kernel.org/index.php/RT_PREEMPT_HOWTO

http://www.elinux.org/Realtime_Testing_Best_Practices#Terminology

http://elinux.org/R-Car/Boards/Yocto-Gen3#Preparing_eMMC.2FSD_card

https://www.youtube.com/watch?v=uXCgwKZs3p0&list=PLyxL6gzx1uepr3OhMVSD05ipfGi49Fpgh&index=9

Repeat the previous command with a substitution
3

$ mplayer Lecture_video_part1.mkv
$ ^1^2^
mplayer Lecture_video_part2.mkv

This command will replace 1 with 2 in the previously executed command. It will only replace the first occurrence of the string and is equivalent to !!:s/1/2/.

If you want to replace all occurrences, you have to use !!:gs/1/2/ or !!:as/1/2/.

https://stackoverflow.com/documentation/vim/1117/movement#t=201707040433241344474

if ( expression ) then                    if ( expression ) then
         statements                                true statements
    endif                                     else
                                                   false statements
                                              endif
switch ( expression )
        case a:
               commands
               breaksw
        case b:
               commands
               breaksw
     endsw
     
     @ n = 5
    while ($n) 
         # do something
         @ n--
    end
