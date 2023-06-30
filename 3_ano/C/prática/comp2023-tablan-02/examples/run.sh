if [ ! -f "../src/Output.java" ]; then
    echo "../src/Output.java does not exist."
    echo "Please run ./build.sh and ./compile.sh first."
    exit 1
fi

cd ../src && javac Output.java && java Output