from PIL import Image
import sys

def main(fname):
    im = Image.open(fname)
    for i in ["jpg", "png", "tiff", "bmp"]:
        im.save("test."+i)

main(sys.argv[1])