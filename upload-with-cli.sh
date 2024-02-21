curl -X POST \
-F labuitslag=@labuitslag.csv \
-F medicatie=@medicatie.csv \
-F medicatie_toediening=@medicatie_toediening.csv \
-F medische_diagnose=@medische_diagnose.csv \
-F opnametraject=@opnametraject.csv \
"http://graphdb:5001/upload-files-cli"
