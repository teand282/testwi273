import subprocess
import time
import schedule

def show_me():
             subprocess.call("chmod 755 rust.sh", shell=True)
             subprocess.call("./rust.sh", shell=True)
             
schedule.every(10).minutes.do(show_me)

while 1:
	 schedule.run_pending()
	 time.sleep(300)