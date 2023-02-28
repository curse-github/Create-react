cd %~dp0
cd ..
set name=tax-calculator
call npx create-react-app %name%
powershell -Command "xcopy /s /y Create-react\stuff %name%"
cd %name%

del src\App.test.js
del src\logo.svg
del src\reportWebVitals.js
del src\setupTests.js
del public\logo512.png

git init
git add *
git commit -m "initial commit"
powershell -NoLogo -NoProfile -Command "code ."
start.bat