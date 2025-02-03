# Nginx Log Analyser

A command-line tool built with shell scripting to analyze Nginx access logs. This project processes a given access log file and outputs valuable statistics, including the top 5 IP addresses, requested paths, response status codes, and user agents.

## Table of Contents

- [Overview](#overview)
- [Project Page](#project-page)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Enhancements](#enhancements)
- [Contributing](#contributing)
- [License](#license)

## Overview

The Nginx Log Analyser is designed to help you learn basic shell scripting while working with real-world data. By parsing the standard Nginx access log (in combined log format), the script extracts and summarizes key information about website traffic.

## Project Page

For more details and project inspiration, visit the [Nginx Log Analyser project page](https://roadmap.sh/projects/nginx-log-analyser).

## Features

- **Top 5 IP Addresses:** Identifies the IP addresses making the most requests.
- **Top 5 Requested Paths:** Lists the most frequently requested resources.
- **Top 5 Response Status Codes:** Summarizes HTTP status codes returned by the server.
- **Top 5 User Agents:** Provides insight into which browsers or bots are accessing your server.

## Requirements

- A Unix-like operating system (Linux, macOS, etc.)
- Basic knowledge of shell scripting and command-line usage.
- Tools: `awk`, `sort`, `uniq`, `head`

## Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/kaalpanikh/nginx-log-analyser.git
   cd nginx-log-analyser
   ```

2. **Download the Log File (Optional):**

   If you want to test with a real log file, download the sample log file:

   ```bash
   curl -o access.log "https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log"
   ```

3. **Make the Script Executable:**

   ```bash
   chmod +x nginx_log_analyser.sh
   ```

## Usage

Run the script by providing the path to your access log file:

```bash
./nginx_log_analyser.sh access.log
```

The output will display the following statistics:
- Top 5 IP addresses
- Top 5 requested paths
- Top 5 response status codes
- Top 5 user agents

## Enhancements

Once you have the basic functionality working, consider these enhancements:
- Add error handling for missing or malformed log files.
- Format output as CSV or JSON for easier integration with other tools.
- Extend the script to analyze additional data such as referrers or daily traffic.
- Experiment with alternative tools like `grep` or `sed` for parsing.

## Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests. For major changes, please open an issue first to discuss your ideas.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Happy scripting and analyzing!