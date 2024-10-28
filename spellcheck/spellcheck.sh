#!/bin/bash

# Spellcheck all text files in the repo
find . -type f \( -name "*.txt" -o -name "*.md" -o -name "*.py" \) -exec codespell {} +

echo "Spellcheck complete."
