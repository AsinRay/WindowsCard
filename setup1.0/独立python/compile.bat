cd /d c:\
cd \
cd PyInstaller
echo "���ڱ����ļ�..."
python PyInstaller.py -a --clean -w --upx-dir=c:\PyInstaller  --icon=c:\cs\src\Airport.ico c:\cs\src\CardService.py

echo "������ɣ����ڿ����ļ�..."

xcopy CardService\dist\CardService %~dp0\pkg\CardService /e/r/y/f

pause