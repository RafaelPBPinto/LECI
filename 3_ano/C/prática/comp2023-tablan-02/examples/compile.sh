if [ $# -eq 0 ]; then
    echo "Usage: ./compile.sh <input_file>"
    exit 1
fi
if [ ! -f "../src/TablanMain.class" ]; then
    echo "../src/TablanMain.class does not exist."
    echo "Please run ./build.sh first."
    exit 1
fi
if [ ! -f $1 ]; then
    echo "$1 does not exist."
    exit 1
fi
cd ../src && java TablanMain ../examples/$1
