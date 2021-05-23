
import subprocess
import time
import schedule

def show_me():
             subprocess.call("bash test.sh", shell=True)
             
             
schedule.every(1).seconds.do(show_me)

while 1:
	 schedule.run_pending()
	 time.sleep(3)
