#!/bin/sh
# autoupdate-revision.sh
# 
# Evgeny Aleksandrov

REV_FILE="${PROJECT_DIR}/Supporting-files/version.xcconfig"
. $REV_FILE

PROJECT_VERSION=${H_VERSION_NUMBER}
COMMITS_COUNT=`git rev-list develop | wc -l  | tr -d ' '`

filepath="${BUILT_PRODUCTS_DIR}/${INFOPLIST_PATH}"

echo "Updating ${filepath}"
echo "Current version ${PROJECT_VERSION}, build ${COMMITS_COUNT}"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion ${COMMITS_COUNT}" "${filepath}"
/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString ${H_VERSION_NUMBER}" "${filepath}"