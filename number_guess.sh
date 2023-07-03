#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=users -t --no-align -c"

RANDOM_NUM=$((RANDOM % 100))

echo "Enter your username:"
read USERNAME

USER_EXIST=$($PSQL "SELECT * FROM users WHERE username='$USERNAME';")
NAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME';")
GAMES=$($PSQL "SELECT games FROM users WHERE username='$USERNAME';")
BEST=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME';")


if [[ -z $USER_EXIST ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
  else
    echo "Welcome back, $NAME! You have played $GAMES games, and your best game took $BEST guesses."
fi

