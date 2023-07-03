#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=users -t --no-align -c"

RANDOM_NUM=$((RANDOM % 1001))

echo "Enter your username:"
read USERNAME

USER_EXIST=$($PSQL "SELECT * FROM users WHERE username='$USERNAME';")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
NAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME';")
GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID;")
BEST=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID;")


if [[ -z $USER_EXIST ]]
  then
    echo "Welcome, $NAME! It looks like this is your first time here."
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  else
    echo "Welcome back, $NAME! You have played $GAMES games, and your best game took $BEST guesses."
fi

FLAG_CHECK=true
TOTAL_GUESSES=1

while $FLAG_CHECK = true
do
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  if [[ GUESS = $RANDOM_NUM ]]
    then
      echo "You guessed it in $TOTAL_GUESSES tries. The secret number was $RANDOM_NUM. Nice job!"
      FLAG=false
    else
      ((TOTAL_GUESSES++))
  fi
done

