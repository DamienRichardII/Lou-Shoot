@echo off
:: ============================================================
:: LouShoot — Fix case sensitivity + Vercel image paths
:: Placer ce .bat dans le meme dossier que les 7 HTML corriges
:: Puis double-cliquer OU lancer depuis le CMD du projet
:: ============================================================

set PROJECT=C:\Users\HP-15\Downloads\lou-shoot-v2-exact-names-lite\lou-shoot-v2
set FIXES=%~dp0

echo.
echo [1/2] Renommage des fichiers avec espace et accent...

ren "%PROJECT%\assets\sections\contact\section-entry\COUV .jpg" "COUV.jpg" 2>nul && echo   OK  COUV.jpg || echo   DEJA OK ou fichier introuvable
ren "%PROJECT%\assets\sections\brand\cinq-visages\Banni^ere.jpg" "Banniere.jpg" 2>nul && echo   OK  cinq-visages/Banniere.jpg || echo   DEJA OK ou fichier introuvable
ren "%PROJECT%\assets\sections\brand\dedictd\Banni^ere.jpg" "Banniere.jpg" 2>nul && echo   OK  dedictd/Banniere.jpg || echo   DEJA OK ou fichier introuvable

echo.
echo [2/2] Copie des fichiers HTML corriges...

copy /Y "%FIXES%index.html"        "%PROJECT%\index.html"              && echo   OK  index.html
copy /Y "%FIXES%brand.html"        "%PROJECT%\brand.html"              && echo   OK  brand.html
copy /Y "%FIXES%contact.html"      "%PROJECT%\contact.html"            && echo   OK  contact.html
copy /Y "%FIXES%editorial.html"    "%PROJECT%\editorial.html"          && echo   OK  editorial.html
copy /Y "%FIXES%yyb.html"          "%PROJECT%\brand\yyb.html"          && echo   OK  brand/yyb.html
copy /Y "%FIXES%jamais-nue.html"   "%PROJECT%\brand\jamais-nue.html"   && echo   OK  brand/jamais-nue.html
copy /Y "%FIXES%cinq-visages.html" "%PROJECT%\brand\cinq-visages.html" && echo   OK  brand/cinq-visages.html
copy /Y "%FIXES%dedictd.html"      "%PROJECT%\brand\dedictd.html"      && echo   OK  brand/dedictd.html

echo.
echo [3/3] Git commit et push...
cd /d "%PROJECT%"
git add -A
git commit -m "Fix case sensitivity and filenames for Vercel Linux"
git push origin main

echo.
echo === TERMINE — verifie lou-shoot.vercel.app dans 30 secondes ===
pause
