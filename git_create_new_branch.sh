#!/bin/bash

read -p "Enter the branch name: " branch_name

# Check if the branch name is compliant with branch naming conventions
if [[ $branch_name =~ ^[a-zA-Z0-9_.-]+$ ]]; then
    # Create the new branch
    git branch $branch_name
     # Checkout the newly created branch
    git checkout $branch_name
    echo "New branch '$branch_name' created successfully."
else
    echo "Invalid branch name. Branch names can only contain letters, numbers, hyphens, dot, and underscores."
fi