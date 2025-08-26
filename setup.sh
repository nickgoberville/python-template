#!/bin/bash
echo "--- Python Project Initializer ---"
# Prompt for the new project name
read -p "Enter the new project name (e.g., awesome-api): " new_name

# Prompt for the new package name (lowercase, underscore)
read -p "Enter the new package name (e.g., awesome_api): " new_package_name

echo "Renaming 'my_project' to '$new_name' and package to '$new_package_name'..."

# Rename the source directory
mv src/my_project src/$new_package_name

# Use sed to replace occurrences in files
# Note: The command varies slightly between GNU sed (Linux) and BSD sed (macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  find . -type f -name "*" ! -path "./.git/*" -exec sed -i '' "s/my_project/$new_name/g" {} +
  find . -type f -name "*" ! -path "./.git/*" -exec sed -i '' "s/my_project/$new_package_name/g" {} +
else
  # Linux
  find . -type f -name "*" ! -path "./.git/*" -exec sed -i "s/my_project/$new_name/g" {} +
  find . -type f -name "*" ! -path "./.git/*" -exec sed -i "s/my_project/$new_package_name/g" {} +
fi

echo "Project renamed. Now, cleaning up..."

# Remove the setup script itself
rm -- "$0"

echo "Setup complete. Please review the changes and commit them."
echo "You may want to manually update the author name in pyproject.toml."