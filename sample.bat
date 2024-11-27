@echo off

rem このバッチファイルがあるフォルダをカレントする
rem PC起動時（UNC準備中）ではエラーになるので、待機時間を作る。
pushd % dp0
if errorlevel 1 (
  echo ネットワークドライブ準備中です。少し待ってからEnterを押してください。
  pause
  pushd %~dp0
