from PIL import Image
import sys

def main(fname):
    im = Image.open(fname)
    width, height = im.size
    new_im = Image.new("L", im.size)

    for x in range(width):
        for y in range(height):
            p = im.getpixel( (x,y) )
            l = int(p[0]*0.299 + p[1]*0.587 + p[2]*0.144)
            new_im.putpixel( (x,y), (l) )

    new_im.save(fname+"-L.jpg")

main(sys.argv[1])