cd `dirname $0`
GIT_DESCRIBE=`cat ../git_describe.txt`

cd ../../
echo "#pragma once" > repo_version.h
echo "#define REPO_VERSION \"$($GIT_DESCRIBE)\"" > repo_version.h

echo "Version information: $($GIT_DESCRIBE)"
echo "Version information header file path: `pwd`/repo_version.h"
