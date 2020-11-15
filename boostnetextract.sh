#!/bin/sh
#Copy only required header files for boost::beast/boost::asio from boost repository (https://github.com/boostorg/boost.git)

REPO_DIR=$1
OUTPUT=$2
: ${REPO_DIR:=.}
: ${OUTPUT:=networkingheaders}

mkdir -p $OUTPUT/boost

REQUIRED_LIBS="asio assert beast bind config container_hash core date_time detail endian exception intrusive io logic move mp11 mpl numeric/conversion optional predef preprocessor smart_ptr static_assert system throw_exception type_traits utility winapi"

for l in $REQUIRED_LIBS; do
  cp -af $REPO_DIR/libs/$l/include/boost/* $OUTPUT/boost/
done

