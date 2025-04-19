# 📂 Sort My Files - File Organizer Script

**A simple Bash script to automatically organize files by their extensions**

![Bash](https://img.shields.io/badge/-Bash-4EAA25?logo=gnu-bash&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue)

## 🚀 Features

- Automatically sorts files into extension-based folders
- Handles files with:
  - Multiple extensions (e.g., `.tar.gz` → `gz/`)
  - No extension (goes to `no_extension/`)
  - Spaces in filenames
- Lightweight (only 20 lines of Bash)
- Works on any Linux/Unix system

## 📦 Installation

1. Clone the repository:
```bash
git clone git@github.com:houdabelhad1/sort-my-files.git
cd sort-my-files
```
2. Make the script executable:

```bash
chmod +x organize_files.sh
🛠 Usage
Basic command:

```bash
./organize_files.sh /path/to/your/directory
Example:

```bash
# Create test files
mkdir test && cd test
touch file.txt image.jpg document.pdf no_extension README.md

# Run the script
../organize_files.sh .
Result structure:

test/
├── txt/
│   └── file.txt
├── jpg/
│   └── image.jpg  
├── pdf/
│   └── document.pdf
└── no_extension/
    ├── README.md
    └── no_extension
🧠 How It Works
The script:

Checks for valid directory input

Processes each file:

```bash
extension="${file##*.}"            # Extract extension
[ "$extension" = "$file" ] &&      # Handle no extension
    extension="no_extension"
mkdir -p "$extension"              # Create folder
mv "$file" "$extension/"           # Move file
📜 License
MIT License - See LICENSE file for details

Made with ❤️ by Your Name


Pour l'utiliser :

1. Créez le fichier :
```bash
nano README.md
Copiez-collez tout le contenu Markdown ci-dessus

Sauvegardez et quittez :

Dans nano : Ctrl+O puis Entrée pour sauvegarder, puis Ctrl+X pour quitter

Ajoutez au dépôt Git :

```bash
git add README.md
git commit -m "Add comprehensive README"
git push
