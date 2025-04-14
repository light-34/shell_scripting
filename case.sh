#!/opt/homebrew/bin/bash

# First Example
read -rp "Enter a number: " num
case $num in
1)
    echo "You entered one."
    ;;
2)
    echo "You entered two."
    ;;
3)
    echo "You entered three."
    ;;
*)
    echo "You entered something else."
    ;;
esac



# Second Example Multiple mathces
read -rp "Enter Y or N : " answer

case $answer in
Y | y | yes | YES | Yes)
    echo "You entered yes."
    ;;
N | n | no | NO | No)
    echo "You entered no."
    ;;
*)
    echo "You entered something else."
    ;;
esac



# Third Example with File Extensions
read -rp "Enter a file name: " filename
case $filename in
*.txt)
    echo "This is a text file."
    ;;
*.jpg | *.jpeg)
    echo "This is a JPEG image."
    ;;
*.png)
    echo "This is a PNG image."
    ;;
*)
    echo "Unknown file type."
    ;;
esac



# Fourth Example with ;& fall through //This supported by bash 4.0 and later zsh suports this but reading value syntax is different
# MacOs comes with bash 3.2 you need to update bash to 4.0 or later by using -> brew install bash and change shebang to /opt/homebrew/bin/bash
read -rp "Enter a number (1-5): " number
case $number in
1)
    echo "You entered one."
    ;& # fall through to the next case
2)
    echo "You entered two."
    ;& # fall through to the next case
3)
    echo "You entered three."
    ;& # fall through to the next case
4)
    echo "You entered four."
    ;& # fall through to the next case
5)
    echo "Finally in five."
    ;;
*)
    echo "You entered something else."
    ;;
esac
