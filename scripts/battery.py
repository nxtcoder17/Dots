import subprocess
import os

x = subprocess.Popen(["acpi"], stdout=subprocess.PIPE)

y = subprocess.Popen(["awk", "{print $3 $4}"], stdin=x.stdout, stdout=subprocess.PIPE)
bat = y.communicate()[0]
bat = bat.decode("UTF-8")
bat = bat.replace(",\n", "")
status, bat = bat.split(",")

# f1e6:   fba4: ﮤ "

inicator = " " if status == "Charging" else ""

bat = int(bat.replace("%", ""))

fill, empty = "◼", "◻"

# print (fill if int(bat.replace ('%', '')) > 0 else empty)
part = bat // 10
filled = part * fill
emptied = (10 - part) * empty

colors = {"red": "#[fg=#ff0000]", "yellow": "#[fg=#ffee00]", "green": "#[fg=#00ff7b]"}

batteries = {10: " ", 45: " ", 70: " ", 100: " "}
icon = None
for battery in sorted(batteries):
    if bat >= battery:
        icon = batteries[battery]

result = ""
result += colors["red"] + fill * min(2, max(part, 1))
part = part - 2
result += colors["yellow"] + fill * min(3, max(part, 0))
part = part - 3
result += colors["green"] + fill * max(part, 0)

print(result + emptied + " " + str(bat) + " " + icon + " " + indicator)
