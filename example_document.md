---
title: This is a title
institute:
  - kcl: School of Biomedical Engineering and Imaging Sciences, King’s College London, London, UK
  - iibm: Institute for Biological and Medical Engineering, Pontificia Universidad Católica de Chile, Santiago, Chile
  - ihealth: Millennium Institute for Intelligent Healthcare Engineering (iHEALTH), Pontificia Universidad Católica de Chile, Santiago, Chile
  - siemens: MR Research Collaborations, Siemens Healthcare Limited, Camberley, United Kingdom
  - electrica: Electrical Engineering, Pontificia Universidad Católica de Chile, Santiago, Chile
  - munich: Hans Fischer Senior Fellow Award, Institute for Advanced Study at Technical University of Munich, Munich, Germany
author:
  - Carlos Castillo-Passi:
      institute:
        - kcl
        - iibm
        - ihealth
      email: cncastillo@uc.cl
      correspondence: yes
      orcid: XXX
  - Karl Kunze:
      institute:
        - siemens
  - Michael Crabb:
      institute:
        - kcl
  - Camila Muñoz:
      institute:
        - kcl
  - Radhouene Neji:
      institute:
        - kcl
  - Pablo Irarrazaval:
      institute:
        - iibm
        - ihealth
        - electrica
  - Claudia Prieto:
      institute:
        - kcl
        - ihealth
        - electrica
  - René Botnar:
      institute:
        - kcl
        - iibm
        - ihealth
        - electrica
        - munich
keyword:
  - MRI
  - Deep learning
  - GPU
csl: templates/MRM.csl
reference-section-title: References
bibliography: MyLibrary.bib
pandoc_args:
  - --template="templates/MRM.tex"
  - --lua-filter="filters/scholarly-metadata.lua"
  - --lua-filter="filters/abstract.lua"
  - --citeproc
---
# Abstract

**Purpose:** To develop ...

**Methods:** In this work, we implemented...

**Results:** The sequence optimization...

**Conclusion:** The developed sequence...

# Title

## Section

Lorem ipsum dolor sit amet, consectetur **adipiscing** elit. Suspendisse commodo, risus sit amet vestibulum sagittis, tortor erat interdum tortor, vel scelerisque justo risus non metus. Morbi suscipit ultricies magna. Maecenas nec arcu lacus. Nunc facilisis molestie dolor vel lacinia. Sed ullamcorper nec tortor non convallis. Nunc suscipit sit amet dui in laoreet. Curabitur sit amet orci varius, feugiat nisl sed, dictum urna. Citing my own paper.[@castillo-passi_komamri_2023] Yes, the cite goes after the punctation mark.
