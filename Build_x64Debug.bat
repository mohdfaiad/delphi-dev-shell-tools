BRCC32 VersionInfo.rc
call "C:\Program Files (x86)\Embarcadero\RAD Studio\11.0\bin\rsvars.bat"
msbuild.exe "DelphiDevShellTools.dproj" /target:Clean;Build /p:Platform=Win64 /p:config=debug


msbuild.exe GUI\GUIDelphiDevShell.dproj /target:Clean;Build /p:Platform=Win32 /p:config=release
copy GUI\GUIDelphiDevShell.exe Win64\Debug\GUIDelphiDevShell.exe

pause