import linecache
import win32gui, win32con, win32api
import sys, time, os
import subprocess

f = open("word_list.txt", "r")
while True:
    line = f.readline()
    print("start")
    if line:
        #var = 'cmd /k d:/module/bin/en_word_msg_dlg.exe ' + line

        for i in range(len(line)):
            if line[i] == ',':
                var = line[i+1:]
                print(var)
        var1= "d:/module/bin/en_word_msg_dlg.exe " + var
        #os.system(var)
        #os.execl("d:/module/bin/en_word_msg_dlg.exe ", "e ", var)
        #subprocess.call("d:/module/bin/en_word_msg_dlg.exe ", var)
        subprocess.call(var1)
        time.sleep(10)
        pass
    else:
        break
print("exit\n")
f.close()
