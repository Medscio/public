curl -X POST -F labuitslag=@/home/stephan.vanderzwaard@mydre.org/public/labuitslag.csv \
-F medicatie_toediening=@@/home/stephan.vanderzwaard@mydre.org/public/medicatie_toediening.csv \
-F medische_diagnose=@/home/stephan.vanderzwaard@mydre.org/public/medische_diagnose.csv \
-F opnametraject=@/home/stephan.vanderzwaard@mydre.org/public/opnametraject.csv \
"http://127.0.0.1:5001/upload-files-cli"
