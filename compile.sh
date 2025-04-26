#!/bin/bash

GREEN='\033[0;32m'
ORANGE='\033[0;33m'
NC='\033[0m'

echo "Checking PlantUML files for updates..."
for puml_file in plantuml/*.puml; do
    if [[ -f "$puml_file" ]]; then
        # Get corresponding .png file path (replace .puml with .png)
        png_file="${puml_file%.puml}.png"
        
        # Regenerate if:
        #   - PNG doesn't exist (-f), OR
        #   - PUML is newer than PNG (-nt)
        if [[ ! -f "$png_file" || "$puml_file" -nt "$png_file" ]]; then
            echo -e "${GREEN}Generating/updating: $puml_file${NC}"
            plantuml "$puml_file"
        else
            echo -e "${ORANGE}Skipping (up to date): $puml_file${NC}"
        fi
    fi
done
echo "PlantUML processing complete."

# Generate thesis.aux file
# (PDF file contains incorrect references yet)
pdflatex thesis.tex
# Generate bibliography
biber thesis
# Generate nomenclature (optional)
makeindex -s nomencl.ist -t thesis.nlg -o thesis.nls thesis.nlo
# Generate final PDF file
pdflatex thesis.tex
