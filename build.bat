@echo off
REM Katip Klavye Eğitim Uygulaması — Windows EXE derleme
chcp 65001 >nul
echo === PyInstaller derlemesi basliyor ===

REM Sanal ortam onerilir
IF NOT EXIST .venv (
    echo Sanal ortam olusturuluyor...
    python -m venv .venv
)
call .venv\Scripts\activate

echo Bagimliliklar yukleniyor...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip install pyinstaller

echo Paketleniyor...
pyinstaller --noconfirm --clean katip_klavye.spec

echo.
echo Bitti! dist\KatipKlavye.exe olusturuldu.
pause