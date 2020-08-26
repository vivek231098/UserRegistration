function firstName(){
read -p "Enter firstName: " value
firstName="^[ A-Z ]{1}[a-z]{2,}$"
if [[ $value =~ $firstName ]]
then
   echo "True"
else
   echo "False"
fi
}

function lastName(){
read -p "Enter lastName: " value
lastName="^[ A-Z ]{1}[a-z]{2,}$"
if [[ $value =~ $lastName ]]
then
   echo "True"
else
   echo "False"
fi
}

function emailValidation(){
read -p "Enter email: " value
pattern="^([a-zA-Z0-9\_\-\+\-]{1}[a-zA-Z0-9\_\-\.\+\-]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,}|[0-9]{1,})(\]?)$"
if [[ $value =~ $pattern ]]
then
   echo "True"
else
   echo "False"
fi
}

function mobileNumberFormat(){
read -p "mobile Number: " value
mobileNumber="^[0-9]{2}[: :][0-9]{10}$"
if [[ $value =~ $mobileNumber ]]
then
   echo "True"
else
   echo "False"
fi
}

function passwordValidation(){
read -p "Enter password " password
if [[ ${#password} -ge 8 && "$password" == *[[:upper:]]* && "$password" == *[[:lower:]]* && "$password" == *[0-9]* &&"$password" == *[[@#%^*]]{1}* ]]
then
   echo "True"
else
   echo "False"
fi
}

function main(){
	firstName
	lastName
	emailValidation
	mobileNumberFormat
	passwordValidation
}
main
