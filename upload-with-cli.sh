curl -X POST -F labuitslag=@labuitslag.csv -F medicatie_toediening=@medicatie_toediening.csv -F medische_diagnose=@medische_diagnose.csv -F opnametraject=@opnametraject.csv "127.0.0.1:5556/upload-files-cli"
