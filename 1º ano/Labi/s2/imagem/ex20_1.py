from PIL import Image
from PIL import ExifTags
import sys

def main(fname):
    im = Image.open(fname)

    width, height = im.size

    for s in [0.2, 8]:
        dimension = ( int(width*s), int(height*s) )
        new_im = im.resize( dimension, Image.BICUBIC)
        new_im.save(fname+"-%.2f.jpg" % s)

    print("Largura: %dpx" % width)
    print("Altura: %dpx" %height)
    print("Formato: %s" % im.format)

    tags = im._getexif()

    for k,v in tags.items():
        print(str(ExifTags.TAGS[k])+" : "+str(v))
        
main(sys.argv[1])