clear
rm -rf Logs/

# robot -l NONE -o NONE -r NONE Tasks/Delorean.robot
# pabot -d ./Logs -v BROWSER:chromium -v HEADLESS:False Tests/
robot -d ./Logs Users/Tests/Users.robot