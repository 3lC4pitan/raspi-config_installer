# Raspberry Pi Raspi-config Installer Script

This shell script automates the installation of `raspi-config` on a Raspberry Pi Linux (Tested on Kali Linux). `raspi-config` is a Raspberry Pi configuration tool that allows users to configure various system settings.

## Installation

1. Ensure you have sudo privileges on your Raspberry Pi.
2. Clone or download this repository to your Raspberry Pi.

```bash
git clone https://github.com/3lC4pitan/raspi-config_installer.git
```


3. Navigate to the directory containing the script.

```bash
cd ./raspi-config_installer/
```
4. Grants execute permissions to the script file and run it with sudo permissions.

```bash
sudo chmod +x raspi-config_installer.sh && sudo ./raspi-config_installer.sh
```

## Usage

After installation, you can run `raspi-config` by executing the following command with sudo:

```bash
sudo raspi-config
```

## Notes

- This script checks for root privileges before proceeding with the installation. Ensure you run it with `sudo`.
- It downloads the `raspi-config` package from the official Raspberry Pi archive repository.
- Dependencies required for `raspi-config` are installed automatically.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, feel free to open an issue or create a pull request.

## License

This script is provided under the [GNU General Public License v2.0](LICENSE).
