import subprocess

def a():
        p = subprocess.Popen(
            ["ffmpeg", "-list_devices", "true", "-hide_banner", "-f", "dshow", "-i", "dummy"],
            stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out = p.communicate()[1].splitlines()
        while not out[0].endswith(b" DirectShow audio devices"):
              out = out[1:]
        print(out[1].decode("ascii").split("]", 2)[1].strip()[1:-1])
a()