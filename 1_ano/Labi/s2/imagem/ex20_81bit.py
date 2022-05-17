from PIL import Image
import sys

def main(fname):
    im = Image.open(fname)
    width, height = im.size

    for x in range(width):
        for y in range(height):
            p = im.getpixel( (x,y) )
            r = p[0] & 0b10000000
            g = p[1] & 0b10000000
            b = p[2] & 0b10000000
            im.putpixel( (x,y), (r,g,b) )

    im.save(fname+"-1bit.jpg")

main(sys.argv[1])