#!/bin/sh
VAR1=$(CAT << EOF
0.0_Credits_&_Legal_Information.md \
0.1_Legal_Information.md \
0.2_Credits.md \
1_Introduction.md \
2_Basic_Mechanics.md \
3_Freeform_Gameplay.md \
4_Tactical_Gameplay.md \

EOF
)

# echo "${VAR1}"
cat $(echo "${VAR1}") > markdown/Rivers.md

pandoc -f markdown -t html markdown/Rivers.md -o docs/Rivers.html 
pandoc markdown/Rivers.md -s --toc  --template=chaosium.latex -H footers.tex -V geometry=margin=1.25in -V mainfont:'Garamond' -V fontsize=11pt -o docs/Rivers.pdf


