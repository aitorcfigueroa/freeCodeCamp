#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "Enter your username:"
read USERNAME
echo $USERNAME >> test.txt

GUESS=$(($RANDOM % 1000 + 1))
echo $GUESS >> test.txt

USER_DATABASE=$($PSQL "SELECT * FROM games WHERE username LIKE '$USERNAME'")
GAMES_PLAYED=0
USERRECORD=1000
echo $USER_DATABASE >> test.txt

if [[ -z $USER_DATABASE ]]
then
  NEWUSER=$($PSQL "INSERT INTO games(username, games_played, best_game) VALUES('$USERNAME', 0, 1000)")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM games WHERE username = '$USERNAME'")
  echo $GAMES_PLAYED >> test.txt
  USERRECORD=$($PSQL "SELECT best_game FROM games WHERE username = '$USERNAME'")
  echo $USERRECORD >> test.txt
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $USERRECORD guesses."
fi

echo "Guess the secret number between 1 and 1000:"

NUMBER_OF_GUESSES=0

while [[ $USER_GUESS != $GUESS ]]
do
  read USER_GUESS
  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
  while [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  do
    echo "That is not an integer, guess again:"
    echo $USER_GUESS >> test.txt
    read USER_GUESS
  done

  if [[ $USER_GUESS > $GUESS ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $USER_GUESS < $GUESS ]]
  then
    echo "It's higher than that, guess again:"
  else
    GAMES_PLAYED=$(($GAMES_PLAYED + 1))
    
    SAVENEWGAMES=$($PSQL "UPDATE games SET games_played = $GAMES_PLAYED WHERE username = '$USERNAME'")
      
    if [[ $USERRECORD -gt $NUMBER_OF_GUESSES ]]
    then
      echo $NUMBER_OF_GUESSES >> test.txt
      SAVENEWRECORD=$($PSQL "UPDATE games SET best_game = $NUMBER_OF_GUESSES WHERE username = '$USERNAME'")
    fi
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $GUESS. Nice job!"
  fi
done
