clear
rm -rf Logs/

robot -l NONE -o NONE -r NONE Tasks/Delorean.robot
pabot -d ./Logs -v BROWSER:chromium -v HEADLESS:True Tests/

@REM rm -rf "./Logs/browser"

mkdir "./Logs/browser"
mkdir "./Logs/browser/screenshot"

xcopy $(find ./Logs/pabot_results -type f -name "*.png") "./Logs/browser/screenshot"

