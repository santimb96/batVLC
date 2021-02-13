@ echo off
cd C:\Program Files\VideoLAN\VLC
set reproductor= --key-pause="Space" --key-vol-up="F8" --key-vol-down="F7" --key-vol-mute="F6" --key-quit="Esc"  --key-leave-fullscreen="Delete" --key-toggle-fullscreen="f"
rem Menú básico de un reproductor de música mediante VLC
echo ==============================
echo --- Bienvenido, %USERNAME% ---
echo ==============================
timeout /t 30

:inicio
cls
echo =========MENU==========
echo =======================
echo Que quieres hacer?
echo 1. Reproducir musica.
echo 2. Reproducir videos.
echo 3. Salir
rem Escoger una acción
choice /C:123 /M:"Escoge una opcion introduciendo el numero de esta"
goto menu%ERRORLEVEL%

:menu1
cls
echo ========MENU AUDIO========
echo ==========================
echo 1. Reproducir lista aleatoria
echo 2. Reproducir lista
echo 3. Reproducir cancion
echo 4. Volver al inicio
echo 5. Salir
rem Escoger una opción
choice /C:12345 /M:"Escoge una opcion introduciendo el numero de esta"
goto musica%ERRORLEVEL%

    :musica1
    cls
    echo ====Espacio: pausar====
    echo ====Espacio: reanudar==
    echo ====F8: subir volumen==
    echo ====F7: bajar volumen==
    echo ====F6: silenciar======
    echo ====Esc: salir=========
    vlc -I dummy C:\batVLC\music --random %reproductor% vlc://quit
    set /p respuesta=Quieres ir al menu de canciones(1), o al principal(2), o repetir la lista(3)? (1/2/3):
    if %respuesta%==1 goto musica3
    if %respuesta%==2 goto inicio
    if %respuesta%==3 goto musica2

    :musica2
    cls
    echo ====Espacio: pausar====
    echo ====Espacio: reanudar==
    echo ====F8: subir volumen==
    echo ====F7: bajar volumen==
    echo ====F6: silenciar======
    echo ====Esc: salir=========
    vlc -I dummy C:\batVLC\music --loop %reproductor% vlc://quit
    set /p respuesta=Quieres ir al menu de canciones(1), o al principal(2), o repetir la lista(3)? (1/2/3):
    if %respuesta%==1 goto musica3
    if %respuesta%==2 goto inicio
    if %respuesta%==3 goto musica2

    :musica3
    cls
    echo ========MENU AUDIO========
    echo ==========================
    echo Que cancion quieres reproducir?
    echo 1. The Police - Roxanne
    echo 2. ACDC - Thunderstruck
    echo 3. Soft Cell - Tainted Love
    echo 4. Volver al menu de inicio
    echo 5. Salir
    rem Escoger una acción
    choice /C:12345 /M:"Escoge una opcion introduciendo el numero de esta"
    goto cancion%ERRORLEVEL%

            :cancion1
            cls
            echo ====Espacio: pausar====
            echo ====Espacio: reanudar==
            echo ====F8: subir volumen==
            echo ====F7: bajar volumen==
            echo ====F6: silenciar======
            echo ====Esc: salir========= 
            vlc -I dummy C:\batVLC\music\roxanne.mp3 %reproductor% vlc://quit
            set /p respuesta=Quieres ir al menu de canciones(1), o al principal(2)? (1/2):
            if %respuesta%==1 goto musica3
            if %respuesta%==2 goto inicio
            
            :cancion2
            cls
            echo ====Espacio: pausar====
            echo ====Espacio: reanudar==
            echo ====F8: subir volumen==
            echo ====F7: bajar volumen==
            echo ====F6: silenciar======
            echo ====Esc: salir=========
            vlc -I dummy C:\batVLC\music\thunderstruck.mp3 %reproductor% vlc://quit
            set /p respuesta=Quieres ir al menu de canciones(1), o al principal(2)? (1/2):
            if %respuesta%==1 goto musica3
            if %respuesta%==2 goto inicio
        
            :cancion3
            cls
            echo ====Espacio: pausar====
            echo ====Espacio: reanudar==
            echo ====F8: subir volumen==
            echo ====F7: bajar volumen==
            echo ====F6: silenciar======
            echo ====Esc: salir=========
            vlc -I dummy C:\batVLC\music\taintedLove.mp3 %reproductor% vlc://quit
            set /p respuesta=Quieres ir al menu de canciones(1), o al principal(2)? (1/2):
            if %respuesta%==1 goto musica3
            if %respuesta%==2 goto inicio

            :cancion4
            cls
            goto inicio

            :cancion5
            exit

        :musica4
        cls
        goto inicio

        :musica5
        exit

:menu2
cls
echo ========MENU VIDEO==========
echo ============================
echo ======Espacio: pausar=======
echo ======Espacio: reanudar=====
echo ======F8: subir volumen=====
echo ======F7: bajar volumen=====
echo ======F6: silenciar=========
echo ======Delete: no fullscreen=
echo ======f: fullscreen=========
echo ======Esc: salir============
vlc C:\batVLC\videos\f1theme.mp4 --fullscreen %reproductor% vlc://quit
set /p respuesta=Quieres ir al menu de volver verlo(1), ir a menu de inicio(2), o salir(3)? (1/2/3):
if %respuesta%==1 goto musica2
if %respuesta%==2 goto inicio
if %respuesta%==3 goto menu3
goto inicio

:menu3
exit