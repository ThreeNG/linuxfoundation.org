#linuxfoundation.org

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
