echo "password is strong if it has uppercase and special characters"
echo "password strength is high if it has special characters"
echo "password strength is medium if it has uppercase but no special characters"
echo "password strength is low if it has only lowercase"
echo "enter password: "
read password
echo "password entered is $password"
len=${#password}
echo "length of password is $len"
if [ $len -lt 10 ]; then
   echo "weak password, minimum password length should be 10"
else
   if [[ $password =~ ['!@#$%^&*()_+'] && $password =~ [A-Z] ]]; then
      echo "strong password, has uppercase and special characters"
   elif [[ $password =~ ['!@#$%^&*()_+'] && !($password =~ [A-Z]) ]]; then 
      echo "high strength, has special characters but no uppercase"
   elif [[ !($password =~ ['!@#$%^&*()_+']) && $password =~ [A-Z] ]]; then
      echo "medium strength, has uppercase but no special characters"
   else
      echo "low strength"
   fi
fi
