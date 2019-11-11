cd `dirname $0`/../../
echo "#define REPO_VERSION \"$(git describe --dirty --always --tags)\"" > ./repo_version.h