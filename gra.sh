#!/bin/bash


clear
figlet "Welcome to RPG Quest"
echo
cowsay -f dragon "A wild dragon appears!"
sleep 2

echo
echo "You are a brave hero on a quest to find the lost treasure of Eldoria."
echo "You arrive at a fork in the road."

echo
echo "What do you want to do?"
echo "1. Go left into the dark forest"
echo "2. Go right toward the mountains"
read -p "Enter your choice (1/2): " choice1

if [ "$choice1" == "1" ]; then
    echo
    cowsay -f ghostbusters "You enter the dark forest..."
    sleep 1
    echo "You hear strange noises. A goblin jumps out!"
    echo "What do you do?"
    echo "a) Fight the goblin"
    echo "b) Run away"
    read -p "Enter your choice (a/b): " forest_choice

    case $forest_choice in
        a)
            echo
            cowsay -f tux "You bravely fight the goblin and win!"
            ;;
        b)
            echo
            cowsay -f sheep "You run away safely, but lose some gold."
            ;;
        *)
            echo "Invalid choice. The goblin steals your map while you're confused!"
            ;;
    esac

elif [ "$choice1" == "2" ]; then
    echo
    cowsay -f dragon "You walk toward the mountains..."
    sleep 1
    echo "You find a sleeping dragon guarding treasure!"
    echo "What do you do?"
    echo "a) Try to sneak past the dragon"
    echo "b) Wake the dragon and challenge it"
    read -p "Enter your choice (a/b): " mountain_choice

    case $mountain_choice in
        a)
            echo
            cowsay -f moose "You sneak quietly and steal a golden ring!"
            ;;
        b)
            echo
            cowsay -f dragon "The dragon wakes up and breathes fire!"
            echo "You are burned to a crisp!"
            ;;
        *)
            echo "You hesitate too long. The dragon wakes up and flies away with the treasure!"
            ;;
    esac

else
    echo "Invalid path. You get lost in the woods."
fi

echo
figlet "The End"


