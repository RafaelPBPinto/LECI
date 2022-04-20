from PIL import Image
import sys

def main(fname):
    im = Image.open(fname)
    width, height = im.size
    f = 1.0
    doubleintensity(im, f, fname)

def doubleintensity(im, f, fname):    
    new_im = im.convert("YCbCr")
    width, height = im.size

    for x in range(width):
        for y in range(height):
            pixel = new_im.getpixel( (x,y) )
            py = min(255, int(pixel[0] * 2*f)) # [0] is the Y channel
            new_im.putpixel( (x,y), (py, pixel[1], pixel[2]) )
    
    new_im.save(fname+"-doubleintensity.jpg")

main(sys.argv[1])