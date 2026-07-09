#!/bin/bash

export WINEPREFIX="$XDG_DATA_HOME/wineprefix"

export LD_LIBRARY_PATH="/app/lib/i386-linux-gnu:/app/lib/i386-linux-gnu/GL/default/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

for icd in /app/lib/i386-linux-gnu/GL/*/vulkan/icd.d/*.json; do
  [ -f "$icd" ] && export VK_ICD_FILENAMES="${VK_ICD_FILENAMES:+${VK_ICD_FILENAMES}:}$icd"
done

if [ ! -d "$XDG_DATA_HOME/DragonBoy250_pc" ]; then
  cp -r /app/extra/DragonBoy250_pc "$XDG_DATA_HOME/"
fi

cd "$XDG_DATA_HOME/DragonBoy250_pc" || exit

if [ ! -f "d3d11.dll" ]; then
  ln -s /app/lib/dxvk/d3d11.dll d3d11.dll
  ln -s /app/lib/dxvk/dxgi.dll dxgi.dll
fi

export WINEDLLOVERRIDES="d3d11,dxgi=n,b"

wine DragonBoy250.exe
wineserver -w
