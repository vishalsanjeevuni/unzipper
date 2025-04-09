# Zip File Extractor

A simple bash script to extract multiple zip files into their own respective folders.

## Description

This script automates the process of extracting multiple zip files by:
- Creating a separate folder for each zip file
- Extracting the contents of each zip file into its corresponding folder
- Providing status updates during the extraction process

## Prerequisites

- Bash shell
- `unzip` command-line tool (usually pre-installed on macOS and Linux)

## Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/unzipper.git
cd unzipper
```

2. Make the script executable:
```bash
chmod +x extract_zips.sh
```

## Usage

Run the script by providing the path to the directory containing your zip files:

```bash
./extract_zips.sh /path/to/your/zipfiles
```

For example, to extract zip files from your Downloads folder:
```bash
./extract_zips.sh ~/Downloads
```

## Features

- Creates separate folders for each zip file
- Preserves original zip files
- Provides extraction status updates
- Handles error cases gracefully
- Works with multiple zip files in a directory

## Error Handling

The script includes error handling for:
- Missing directory argument
- Non-existent directory
- No zip files found in the directory
- Failed extraction attempts

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. 