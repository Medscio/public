start_time=$(date +%s)

start_date=$(date +"%Y-%m-%d %H:%M:%S")
echo "Start Time: $start_date"

curl -X POST -F labuitslag=@labuitslag.csv -F medicatie_toediening=@medicatie_toediening.csv -F medische_diagnose=@medische_diagnose.csv -F opnametraject=@opnametraject.csv "127.0.0.1:5555/upload-files-cli"

end_time=$(date +%s)

end_date=$(date +"%Y-%m-%d %H:%M:%S")
echo "End Time: $end_date"

total_time=$((end_time - start_time))
total_time_formatted=$(printf '%02d:%02d:%02d\n' $(($total_time/3600)) $(($total_time%3600/60)) $(($total_time%60)))
echo "Total Time Taken: $total_time_formatted"
