/*
 *
 */

#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <stdlib.h>
#include "process.h"

GlobalInfo gi;
static int quit = 1;

int main(int argc, char **args) 
{
    char *dev = "/dev/video0";
    char *path = "/tmp/av.unix";
    char *logfile = "/tmp/jkrecord.log";
    int debug = 0;
    int opt = 0;
    while((opt = getopt(argc, args, "i:p:l:dh")) != -1) {
        switch(opt) {
            case 'i':
                dev = optarg;
                break;
            case 'p':
                path = optarg;
                break;
            case 'l':
                logfile = optarg;
            case 'd':
                debug = 1;
                break;
            case 'h':
                fprintf(stderr, "Usage: %s -i video_dev -p path -l logfile -d debug\n", args[0]);
                return -3;
        }
    }

    rt_print_set_log_file(logfile);

    rtdebug("Program start with dev [%s] path [%s] logfile [%s]\n", dev, path, logfile);
    snprintf(gi.videoDev, sizeof(gi.videoDev), "%s", dev);

    if (debug) {
        gi.fs = fopen("/tmp/v.h264", "w");
        if (!gi.fs) {
            rterror("Error open file to write\n");
            return -5;
        }
    }

    int ret = rs_init(&gi);
    if (ret < 0) {
        rterror("rs init failed [%d]\n", ret);
        return -1;
    }

    ret = rs_start(&gi, 640, 480);
    if (ret < 0) {
        rterror("rs start failed [%d]\n", ret);
        return -2;
    }
    ret = sock_init(&gi, path);
    if (ret < 0) {
        rterror("sock init failed [%d]\n", ret);
    }

    time_t last = time(NULL);
    quit = 0;
    while (1) {
        if (quit && time(NULL) - last > 15) break;
        ret = rs_run(&gi);
        rtdebug("Codec Decoder len %d", gi.stream_delen);
        if (gi.stream_delen > 0) {
            ret = sock_send(&gi, (unsigned char*)gi.stream_dedata, gi.stream_delen);
            rtdebug("sock send data ret [%d] len [%d]", ret, gi.stream_delen);
        }

        if (debug) {
            if (gi.stream_delen > 0) {
                fwrite(gi.stream_dedata, 1, gi.stream_delen, gi.fs);
            }
        }

        usleep(40000);
    }

    if (debug) {
        if (gi.fs) fclose(gi.fs);
    }

    sock_deinit(&gi);
    rs_deinit(&gi);

    return 0;
}
