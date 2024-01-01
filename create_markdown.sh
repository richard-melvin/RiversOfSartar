#!/bin/sh
VAR1=$(CAT << EOF
0.0_Credits_&_Legal_Information.md \
0.1_Legal_Information.md \
0.2_Credits.md \
1.0_Introduction.md \
1.1_Why_Rivers.md \
1.2_Version.md \
1.3_Who_Is_This_For.md \
1.4_Numbering.md \
1.5_Participants.md \
2.0_Basic_Mechanics.md \
2.1_Abilities.md 
EOF
)

# echo "${VAR1}"
cat $(echo "${VAR1}") > markdown/Rivers.md

pandoc -f markdown -t html markdown/Rivers.md -o docs/Rivers.html 
pandoc markdown/Rivers.md -s --toc  --template=chaosium.latex -H footers.tex -V geometry=margin=1.25in -V mainfont:'Garamond' -V fontsize=11pt -o docs/Rivers.pdf


