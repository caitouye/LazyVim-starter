@echo off
setlocal EnableDelayedExpansion
::#--------------------------------
:: script path
set BasePath=%~dp0
set BasePath=%BasePath:~0,-1%
::#--------------------------------
:: python 3
call "%BasePath%\pynvim\Scripts\activate.bat"
::#--------------------------------

if [%1] == [] (
	echo Need args: branch_no [create, fvim, server, client]
	pause
	goto :eof
)

set Branch=%1
echo branch: %Branch%

set Config=%BasePath%\neovim%Branch%
set XDG_CONFIG_HOME=%Config%\XDG_CONFIG_HOME
set XDG_DATA_HOME=%Config%\XDG_DATA_HOME
set XDG_STATE_HOME=%Config%\XDG_STATE_HOME
set XDG_CACHE_HOME=%Config%\XDG_CACHE_HOME

if [%2] == [create] (
	echo create branch dir: %Branch%
	if not exist "%Config%" ( mkdir "%Config%" )
	if not exist "%XDG_CONFIG_HOME%" ( mkdir "%XDG_CONFIG_HOME%" )
	if not exist "%XDG_DATA_HOME%" ( mkdir "%XDG_DATA_HOME%" )
	if not exist "%XDG_STATE_HOME%" ( mkdir "%XDG_STATE_HOME%" )
	if not exist "%XDG_CACHE_HOME%" ( mkdir "%XDG_CACHE_HOME%" )
	echo branch dir created: %Config%
	pause
	goto :eof
)

set Neovim=%BasePath%\nvim%Branch%\bin\nvim.exe
if not exist "%Neovim%" ( set Neovim=%BasePath%\nvim1\bin\nvim.exe )
set Terminal=%BasePath%\neovide%Branch%\neovide.exe
if not exist "%Terminal%" ( set Terminal=%BasePath%\neovide1\neovide.exe )
set Option=--neovim-bin
if [%2] == [fvim] (
	set Terminal=%BasePath%\fvim%Branch%\FVim.exe
	if not exist "%Terminal%" ( set Terminal=%BasePath%\fvim1\FVim.exe )
	set Option=--nvim
)


set Port=50001

if [%2] == [server] (
	%Neovim% --headless --listen 127.0.0.1:%Port%
	pause
	goto :eof
)

if [%2] == [client] (
	start "title" %Terminal% --server=localhost:%Port%
	goto :eof
)


start "title" %Terminal% %Option% %Neovim%


