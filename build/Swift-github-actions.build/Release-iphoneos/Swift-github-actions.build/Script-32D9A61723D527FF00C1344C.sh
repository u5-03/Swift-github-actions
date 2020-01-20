#!/bin/sh
# Type a script or drag a script file from your workspace to insert its path.
if mint list | grep -q 'R.swift'; then
  mint run R.swift rswift generate "$SRCROOT/Swift-github-actions/Generated/R.generated.swift"
else
  echo "error: R.swift not installed; run 'mint bootstrap' to install"
  return -1
fi


