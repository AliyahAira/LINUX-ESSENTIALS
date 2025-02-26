echo "Enter your exam score (0-100): " 
read score

if [ $score -lt 0 ] || [ $score -gt 100 ]; then
    echo "Error: Please enter a valid score between 0 and 100."
else
    # use this if it doesn't satisfy the statment aove
    case $score in
         100) echo "Grade A" ;;  # 100
         [9][0-9] | 100) echo "Grade A" ;;  # 90-100
         [8][0-9])     echo "Grade B" ;;  # 80-89
         [7][0-9])     echo "Grade C" ;;  # 70-79
         [6][0-9])     echo "Grade D" ;;  # 60-69
         *)            echo "Grade F" ;;  # 0-59
    esac
fi

./Act4.sh