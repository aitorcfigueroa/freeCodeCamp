#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t -c"

ELEMENT=$1

if [[ -z $ELEMENT ]]
then
  echo "Please provide an element as an argument."
else
  if [[ $ELEMENT =~ ^[0-9]+$ ]]
  then
    ELEMENT_DATA=$($PSQL "SELECT * FROM elements INNER JOIN properties ON elements.atomic_number = properties.atomic_number INNER JOIN types ON properties.type_id = types.type_id WHERE elements.atomic_number = $ELEMENT")
  else
    ELEMENT_DATA=$($PSQL "SELECT * FROM elements INNER JOIN properties ON elements.atomic_number = properties.atomic_number INNER JOIN types ON properties.type_id = types.type_id WHERE elements.symbol = '$ELEMENT' OR elements.name = '$ELEMENT'")
  fi

  if [[ -z $ELEMENT_DATA ]]
  then
    echo "I could not find that element in the database."
  else
    echo $ELEMENT_DATA | while read ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_NUMBER2 BAR ATOMIC_MASS BAR MELTING_POINT_CELSIUS BAR BOILING_POINT_CELSIUS BAR TYPE_ID2 BAR TYPE_ID BAR TYPE
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
  fi
fi