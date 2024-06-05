
# EC2-Instance-Start-Stop-Script
This script will help stop or start the EC2 instance with a automated script using cli. 

# EC2 Control Script

This Bash script allows you to start or stop an EC2 instance on AWS using the AWS CLI.

## Prerequisites

Before using this script, make sure you have the following:

- AWS CLI installed and configured with appropriate permissions.
- An EC2 instance ID to control.

## Usage

1. Clone or download this repository.
2. Ensure the script (`ss-script.sh`) has execute permissions (`chmod +x ss-script.sh`) and/or (chmod 700 ss-script.sh.
3. Run the script with the appropriate argument:

   ```bash
   ./ec2control.sh start/stop
