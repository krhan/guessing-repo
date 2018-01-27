#!/usr/bin/env bash
# File: guessinggame.sh

function guess {

  local correct=false
  local count=$(ls -l | grep ^- | wc -l)

  echo "Guess how many files are in the current directory:"

  while [[ $correct -eq "false" ]]
  do
     read guess

     if [[ ! $guess =~ [(^0-9+$)]  ]]
     then
        echo "Please try again by giving a number:"

     elif [[ $guess > $count ]]
     then
       echo "You're guess is too high. Go ahead and try again:"

     elif [[ $guess < $count ]]
     then
        echo "You're guess is too low. Please try again:"

     else
        correct=true
        echo "You guessed right! Congratulations!"
        break
      fi
  done
}

guess
