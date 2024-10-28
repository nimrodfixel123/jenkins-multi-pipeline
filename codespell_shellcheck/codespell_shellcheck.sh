#!/bin/bash

# Run codespell
codespell .

# Run shellcheck on all .sh files
find . -name "*.sh" -exec shellcheck {} +

echo "Codespell and Shellcheck complete."
