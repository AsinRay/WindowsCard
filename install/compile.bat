cd /d c:\
cd \
cd PyInstaller
rem define the PyInstaller home
cd /d c:\PyInstaller
@SET src="%~dp0\..\src"

echo "���ڱ����ļ�..."
echo "python PyInstaller.py -a -w --clean --upx-dir=c:\PyInstaller  -i c:\cs\src\Airport.ico %src%\CardService.py"

python PyInstaller.py -a -w --clean %src%\CardService.py

echo "������ɣ����ڿ����ļ�..."

rem copy file to dest.
xcopy CardService\dist\CardService %~dp0\pkg\CardService /e/r/y/f

pause