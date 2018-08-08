#!/bin/bash

set -xeo pipefail

# Remove trailing whitespace characters
sed -i 's/[ \t]*$//' README.md

# Create or update the table of contents
doctoc README.md

# Push to the server
git commit -am "Update README.md"
git push

exit 0

