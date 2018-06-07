#loop under lines
#if q-chem - pass
#next delete "-" and replace ',' on '/n'
#output result

file="resourses/surnames.txt"
count=0
input_arg=$1
qchem='Q-Chem'
if [ "$#" -eq 0 ] || [ $input_arg -eq 0 ]; then
  exit 1
fi
while IFS= read line
  do
  if [[ $count == $input_arg ]]; then
    break
  fi
  let count+=1
  if !  [[ $line =~ "$qchem" ]]; then
    echo $line | sed 's/\.//' | sed 's/\-//'
  fi
done <"$file"