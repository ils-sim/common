#/bin/bash
set -ex

cppcheck --version

cppcheck --enable=all --suppress=missingIncludeSystem --inconclusive src \
ibuild \
-Isrc \
-Iprotocol/cpp_out --inline-suppr --suppress=unusedFunction 2> cppcheck-result.txt

if [ ! -s cppcheck-result.txt ]
    then
        exit 0
    fi

    cat cppcheck-result.txt
    exit 1
fi

