# Prompt the user for a commit message
echo "Enter your commit message:"
read commit_message
echo "Type 'y' to confirm, press any other key to decline: `$commit_message`"
read -n 1 confirm
# Add all changes to staging
git add .
case "$confirm" in
    [Yy])
        # Commit with the provided message
        echo "Commit message confirmed. Proceeding with commit."
        git commit -m "$commit_message"
        # Check if the commit was successful
        if [ $? -eq 0 ]; then
            echo "git commit done with commit message: `$commit_message`"
        else
            echo "Commit failed. Please check the error message above."
        fi
        ;;
    *)
        echo "Commit message not confirmed. Exiting without commit."
        exit 1
        ;;
esac