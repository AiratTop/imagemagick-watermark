# imagemagick-watermark

![imagemagick-watermark](https://repository-images.githubusercontent.com/323574175/f8fee100-445e-11eb-90d5-1f333250d808)

A script for fast batch compression and watermarking of images by AiratTop.

## Installation and Usage:  
```bash
git clone https://github.com/AiratTop/imagemagick-watermark

cd imagemagick-watermark

./imagemagick-watermark.sh
```

### Notes:  
- The script works with the `images` folder; copy your source images into this folder.  
- Before running the script, install the [ImageMagick](https://imagemagick.org/index.php) package (command: `sudo apt install imagemagick`).  
- Check the [script's comments](https://github.com/AiratTop/imagemagick-watermark/blob/main/imagemagick-watermark.sh) for detailed instructions (you can edit parameters as needed).  
- A quick reference guide for image file operations is available [here](http://www.uamedwed.com/blog/linux/imagemagick-ili-kak-szhimat-izobrazheniya-v-os-linux.html).  
- Prepare your watermark in advance and place it in the root folder. The watermark file must be named `water.png`, or you can specify it in the `WATER` variable.  
- An example image, `example.jpg`, is provided in the `images` folder for demonstration purposes (this file can be deleted).  
- The `water.xcf` file can be edited using [GIMP](https://www.gimp.org/) and is used to create the `water.png` file.  

### Variables:  
- `QUALITY=85` - Changes the image quality (percentage).  
- `SIZE=1024` - Resizes images while maintaining aspect ratio (width in pixels).  
- `WATER=water.png` - Specifies the watermark file name (no spaces).  
- `SOURCE=images` - Specifies the source images folder.  

### Folders:  
- `images` - The folder for source images (this folder must not be deleted and is configured via the `SOURCE` variable).  
- `result-small` - The folder for compressed images (created automatically; can be deleted).  
- `result-water` - The final folder containing compressed images with watermarks (created automatically; can be deleted).  

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Author

**AiratTop**

- Website: [airat.top](https://airat.top)
- GitHub: [@AiratTop](https://github.com/AiratTop)
- Repository: [imagemagick-watermark](https://github.com/AiratTop/imagemagick-watermark)
