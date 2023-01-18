#!/bin/bash -x

declare -A classroom; #to declare a dict

classroom["student-1"]="akash";
classroom["student-2"]="satya";
classroom["student-3"]="rajan";
classroom["student-4"]="arindam";
classroom["student-5"]="komal";

#display the ele in the dict
echo ${classroom[@]};

#display the value of the key
echo ${classroom["student-3"]};

#updating the existing key with new value
classroom["student-3"]="chandan";
echo ${classroom["student-3"]};

#diaplay all keys of dict
echo ${!classroom[@]};

#remove the key-value pair
unset classroom["student-2"]
echo ${classroom[@]};

#display the key-value pairs of dict
for student in "${!classroom[@]}"
do
  echo "$student ${classroom[$student]}";
done

