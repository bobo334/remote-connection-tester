
# Project R

This repository contains scripts and configuration files for Project R.

## Setup

1.  **Fork the repository:** Click the 'Fork' button at the top right of this page.
2.  **Configure Secrets:**
    *   Navigate to your forked repository's `Settings` > `Secrets and variables` > `Actions`.
    *   Click `New repository secret`.
    *   Add a secret named `NGROK_AUTH_TOKEN` with your Ngrok authentication token as the value. You can get your token from the [Ngrok dashboard](https://dashboard.ngrok.com/auth/your-authtoken).
3.  **Run Workflow:**
    *   Go to the `Actions` tab in your repository.
    *   Select the desired workflow (e.g., `CI`).
    *   Click `Run workflow`.
4.  **Access Information:**
    *   After the workflow completes, navigate to the workflow run summary.
    *   Look for an artifact named `ACCESS_INFO` (or similar) and download it to get access details like IP, username, and password.

## Disclaimer

This project is intended for educational and experimental purposes only. Please use it responsibly and in accordance with applicable laws and terms of service.
