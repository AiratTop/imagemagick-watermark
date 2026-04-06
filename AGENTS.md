# AGENTS.md

## Purpose
Local CLI utility for fast batch image resize/compression and watermarking.

## Repository Role
- Category: local utility project.
- Type: Bash script based on ImageMagick.
- Main entrypoint: `imagemagick-watermark.sh`.

## Processing Flow
1. Read source images from `SOURCE` folder (default `images`).
2. Resize/compress images into `result-small`.
3. Apply watermark (`WATER`, default `water.png`) into `result-water`.

## Key Files
- `imagemagick-watermark.sh`: main processing script.
- `images/`: source images folder (required).
- `water.png`: watermark image used by `composite`.
- `water.xcf`: editable source for watermark (GIMP file).

## Config Variables (in script)
- `QUALITY=85`
- `SIZE=1024`
- `WATER=water.png`
- `SOURCE=images`

## Dependencies
- ImageMagick tools must be available in PATH (`convert`, `composite`).

## AI Working Notes
- Keep input/output directory contract unchanged: `images` -> `result-small` -> `result-water`.
- Preserve filename consistency across stages.
- Do not remove watermark existence check and source-folder validation.
- If adding new options, keep defaults backward-compatible for current workflow.
