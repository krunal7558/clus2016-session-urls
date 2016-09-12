for i in $(cat CLUS2016.csv);
do
  LABEL=$(echo $i | awk -F ',' '{print $1}')
  URL=$(echo $i | awk -F ',' '{print $2}')
  curl -o "${LABEL}.mp4" "${URL}"
done
