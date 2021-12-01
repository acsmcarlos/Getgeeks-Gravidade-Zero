clear
rm -rf Logs/

robot -l NONE -o NONE -r NONE Tasks/Delorean.robot
pabot -d ./Logs -v BROWSER:chromium -v HEADLESS:False Tests/

rm -rf ./Logs/browser

mkdir -p ./Logs/browser/
mkdir ./Logs/browser/screenshot

cp $(find ./Logs/pabot_results -type f -name "*.png") ./Logs/browser/screenshot

