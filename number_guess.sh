#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=users -t --no-align -c"

RANDOM_NUM=$((RANDOM % 1001))

echo  "$RANDOM_NUM"
echo "Enter your username:"
read USERNAME

USER_EXIST=$($PSQL "SELECT * FROM users WHERE username='$USERNAME';")
NAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME';")

if [[ -z $USER_EXIST ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
  else
    echo "Welcome back, $NAME! You have played $GAMES games, and your best game took $BEST guesses."
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$NAME');")
    if [[ $INSERT_USER_RESULT = "INSERT 0 1" ]]
      then 
        USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
    fi
fi

GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID;")
BEST=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID;")

FLAG_CHECK=true
TOTAL_GUESSES=1

while $FLAG_CHECK
do
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  if [[ $GUESS = $RANDOM_NUM ]]
    then
      echo "You guessed it in $TOTAL_GUESSES tries. The secret number was $RANDOM_NUM. Nice job!"
      FLAG_CHECK=false
    else
      ((TOTAL_GUESSES++))
  fi
done

