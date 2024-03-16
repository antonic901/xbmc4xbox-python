#!/bin/sh
DEST="BUILD/python"
OUT="$DEST/python27.zlib"

mkdir -p $DEST
mkdir -p $DEST/DLLs

cp -v "python/XBOXbuild/Release XBOX/python27.dll" "$DEST/"
cp -v "python/XBOXbuild/Release XBOX/"*.pyd "$DEST/DLLs"
rm -f "$OUT"

cd python/Lib/
zip "../../$OUT" \
  -r . \
  -i \*.py \
  -x \
    plat-\* \
    distutils/\* \
    curses/\* \
    lib-tk/\* \
    lib2to3/\* \
    idlelib/\* \
    test/\* \
    unittest/\* \
    multiprocessing/\* \
    \*/tests/\* \
    \*/test/\*
