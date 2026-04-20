# CUSINI ROYAL VIDEO TOOL

## Как запустить

1. Откройте раздел `Releases`
2. Скачайте файл `CUSINI_ROYAL_VIDEO_TOOL.exe`
3. Запустите его
4. Нажмите `Выбрать файл...`
5. Выберите, что нужно сделать: `Сжатие` или `Обрезка`

Результат сохраняется рядом с исходным видео, если не выбрать другой путь вручную.

## Ссылка

`https://github.com/hauntm3/cusin-video-tool/releases`

## Для разработки

Если нужно запустить проект из исходников:

```powershell
python -m pip install -r requirements.txt
python .\compress_video.py
```

Если нужно пересобрать `.exe`:

```powershell
.\build_exe.bat
```
