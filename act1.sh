#You are task with writing a bash Script that simulates a grading system.
#The script should:
#Ask the user to input their exam score (0-100)
#based on the input, determine the grade using the following criteria:
#90-100 --> Grade A
#90-100 --> Grade B
#90-100 --> Grade C
#90-100 --> Grade D
#90-100 --> Grade F
#If the input is not betweenn 0 and 100, display an error message.
#!/bin/bash

# Ask the user to input their exam score
read -p "Enter your exam score (0-100): " score

# Validate if the score is between 0 and 100
if ((score -lt 0 && score -gt 100)); then
    echo "Error: Please enter a valid score between 0 and 100."
    exit 1
fi

# Use the case statement to determine the grade
case $score in
    $[score -gt 90]) echo "Grade A" ;;  # 90-100
    $[score -ge 80 && -lt 90] ) echo "Grade B" ;;  # 80-89
    $[score -ge 70 && -lt 80])  echo "Grade C" ;;  # 70-79
    $[score -ge 60 && -lt 70])  echo "Grade D" ;;  # 60-69
    *) echo "Grade F" ;;  # 0-59
esac
