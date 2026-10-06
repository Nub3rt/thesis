# Thesis Paper for Terraforming Mars in OpenGL

This repository contains the LaTeX source for the thesis paper for my BSc thesis at ELTE, **Terraforming Mars in OpenGL**. The repository for the code is available [here](https://github.com/Nub3rt/terraforming-mars).

This project is based on the public ELTE IK LaTeX thesis template from:
https://github.com/mcserep/elteikthesis

The main document is `thesis.tex`, and the compiled PDF is `thesis.pdf`.

The paper contains User and Development documentations. The previous offers an explanation on how to use the application, while the latter is concerned about the development environment and the structure of the codebase, and insights about specific design and implementation choices.

## Structure

- `chapters/` – thesis chapters
- `images/` – figures and assets
- `plantuml/` – UML source files
- `compile.sh` – generates plantuml diagrams and builds the document
- `elteikthesis.cls` – thesis template
- `elteikthesis.bib` – bibliography

## Dependencies

This project uses:

- LaTeX toolchain (`pdflatex`/`latexmk`-style workflow)
- BibTeX for bibliography generation
- PlantUML for diagram sources under `plantuml/`

If PlantUML diagrams are used in the build, make sure the PlantUML executable is installed and available on the PATH.

## Build

Run:

```bash
./compile.sh
```

This regenerates the PDF for the thesis.
