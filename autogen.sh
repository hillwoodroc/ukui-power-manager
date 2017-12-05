#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="ukui-power-manager"

(test -f $srcdir/configure.ac) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

which ukui-autogen || {
    echo "You need to install ukui-common"
    exit 1
}

which yelp-build || {
    echo "You need to install yelp-tools" 
    exit 1
}

REQUIRED_AUTOMAKE_VERSION=1.9
UKUI_DATADIR="$ukui_datadir"

. ukui-autogen
