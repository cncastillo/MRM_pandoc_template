# MRM_pandoc_template
This repository provides an unofficial pandoc template for the Magnetic Resonance in Medicine (MRM) journal. It is still a work in progress 👷 so I do not ensure that everything will work.

# How to use
1. First, ensure you have installed pandoc, TeX Live, and MRM's LaTeX template.
2. Then allow the script `panrun` to be executable (`chmod +x panrun`) as it will read parameters defined in `pandoc_args`.
3. Finally, run the following script: 
```bash
./panrun MRM_example_document.md -o MRM_example_document.pdf
```
For some reason, the file `Orcidlogo-eps-converted-to.pdf` needs to be in the same folder of `MRM.tex`.

# How to use with Obsidian
To use this in Obsidian, use the extension "Obsidian Enhancing Export" and change:

![image](https://github.com/cncastillo/MRM_pandoc_template/assets/5957134/0b4b0e37-6771-4c85-85c5-2f317afd9af0)

and change the parameters for the PDF export if needed (add a `--resource-path` pointing to the location of the `filters` and `MRM.tex`)

![image](https://github.com/cncastillo/MRM_pandoc_template/assets/5957134/b701525b-528b-4645-913a-f61c8b1b2a5e)



