# Ngọc Rồng Online - Linux

![banner-image]

Chơi [Ngọc Rồng Online][ngoc-rong-online] trên Linux.

## Giới thiệu

Đây chỉ là một cái Wine wrapper (Flatpak).

## Tải và cài đặt

Tải rồi double click cái [file .flatpak][release-flatpak-file] mới nhất trong phần Release.

Nếu double click xong mà không có gì xảy ra thì:
```bash
flatpak install com.teamobi.DragonBoy.flatpak
```

## Build

Để [build][flatpak-builder-docs] thì:
```bash
flatpak-builder --disable-rofiles-fuse --install --user build-dir com.teamobi.DragonBoy.json
```
(có thể bỏ `--disable-rofiles-fuse` và `--user` nếu không cài `flatpak-builder` trong `toolbox`)


[banner-image]: https://github.com/user-attachments/assets/91490f29-79df-473e-9cdd-e58eb610275f
[ngoc-rong-online]: https://ngocrongonline.com/
[release-flatpak-file]: ../../releases/latest/download/com.teamobi.DragonBoy.flatpak
[flatpak-builder-docs]: https://docs.flatpak.org/en/latest/flatpak-builder.html
