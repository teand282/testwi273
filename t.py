import subprocess
import time
import schedule
subprocess.call("chmod 755 root.sh", shell=True)
subprocess.call("./root.sh", shell=True)