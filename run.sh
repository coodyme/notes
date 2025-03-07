#!/bin/bash

# Script to navigate and display markdown notes
# Save this as something like 'notes.sh'

# Set the base directory (adjust this to your repository path)
BASE_DIR="$HOME/path/to/your/repository"  # Change this to your actual path

# Colors for better formatting
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to display markdown files with basic formatting
display_markdown() {
    file="$1"
    echo -e "${GREEN}=== $(basename "$file") ===${NC}"
    echo ""
    
    # Simple markdown formatting
    while IFS= read -r line; do
        # Headers
        if [[ $line =~ ^#{1,3}\s ]]; then
            echo -e "${BLUE}${line}${NC}"
        # Code blocks
        elif [[ $line =~ ^\`\`\` ]]; then
            echo -e "${GREEN}${line}${NC}"
        else
            echo "$line"
        fi
    done < "$file"
    echo ""
}

# Function to list notes in a category
list_notes() {
    category="$1"
    category_path="$BASE_DIR/$category"
    
    echo -e "${GREEN}Notes in $category:${NC}"
    echo ""
    
    # Get all .md files and create an array
    mapfile -t notes < <(find "$category_path" -maxdepth 1 -type f -name "*.md" | sort)
    
    if [ ${#notes[@]} -eq 0 ]; then
        echo "No notes found in this category."
        return
    fi
    
    # Display menu
    for i in "${!notes[@]}"; do
        note_name=$(basename "${notes[$i]}" .md)
        echo "$((i+1)). $note_name"
    done
    
    echo ""
    echo "0. Back to main menu"
    echo ""
    
    # Get user selection
    read -p "Select a note (number): " selection
    
    if [ "$selection" -eq 0 ]; then
        return
    elif [ "$selection" -ge 1 ] && [ "$selection" -le "${#notes[@]}" ]; then
        clear
        display_markdown "${notes[$((selection-1))]}"
        read -p "Press Enter to continue..."
    else
        echo "Invalid selection"
        sleep 1
    fi
}

# Main menu loop
main_menu() {
    while true; do
        clear
        echo -e "${GREEN}=== Notes Categories ===${NC}"
        echo ""
        
        # Get all directories and create an array
        mapfile -t categories < <(find "$BASE_DIR" -maxdepth 1 -type d ! -path "$BASE_DIR" | sort)
        
        if [ ${#categories[@]} -eq 0 ]; then
            echo "No categories found in $BASE_DIR"
            exit 1
        fi
        
        # Display categories
        for i in "${!categories[@]}"; do
            category_name=$(basename "${categories[$i]}")
            echo "$((i+1)). $category_name"
        done
        
        echo ""
        echo "0. Exit"
        echo ""
        
        read -p "Select a category (number): " choice
        
        if [ "$choice" -eq 0 ]; then
            echo "Goodbye!"
            exit 0
        elif [ "$choice" -ge 1 ] && [ "$choice" -le "${#categories[@]}" ]; then
            clear
            list_notes "$(basename "${categories[$((choice-1))]}")"
        else
            echo "Invalid selection"
            sleep 1
        fi
    done
}

# Check if base directory exists
if [ ! -d "$BASE_DIR" ]; then
    echo "Error: Directory $BASE_DIR not found"
    exit 1
fi

# Start the script
main_menu