FROM docker.io/opensuse/leap
RUN rm /etc/zypp/repos.d/*;\
    zypper ar http://cdn.opensuse.org/repositories/openSUSE:/ALP:/Experimental:/Slowroll/base/repo/oss/ base-oss;\
    zypper ar http://cdn.opensuse.org/repositories/openSUSE:/ALP:/Experimental:/Slowroll/base/repo/non-oss/ base-non-oss;\
    zypper ar -p 80 --refresh http://cdn.opensuse.org/repositories/openSUSE:/ALP:/Experimental:/Slowroll/standard/ update;\
    zypper ar --disable http://cdn.opensuse.org/repositories/openSUSE:/ALP:/Experimental:/Slowroll/base/repo/src-oss/ base-src-oss;\
    zypper ar http://codecs.opensuse.org/openh264/openSUSE_Tumbleweed/ h264;\
    zypper ar -p 70 http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Slowroll/Essentials/ packman;\
    zypper -n dup
