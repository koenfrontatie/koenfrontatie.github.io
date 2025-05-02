@echo off
setlocal

:: Force working directory to the location of the batch file
cd /d "%~dp0"

:: Rename .data to build.data
for %%f in (*.data) do (
    ren "%%f" "build.data"
    goto :next1
)

:next1
:: Rename .framework.js to build.framework.js
for %%f in (*.framework.js) do (
    ren "%%f" "build.framework.js"
    goto :next2
)

:next2
:: Rename loader.js to build.loader.js
for %%f in (*loader.js) do (
    ren "%%f" "build.loader.js"
    goto :next3
)

:next3
:: Rename .wasm to build.wasm
for %%f in (*.wasm) do (
    ren "%%f" "build.wasm"
    goto :done
)

:done
echo Files renamed to build.* format in %cd%.
endlocal
pause
