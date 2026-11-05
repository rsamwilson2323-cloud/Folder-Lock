# 🔐 FOLDER LOCK

A lightweight Windows folder-locking utility built using **Windows Batch Scripting (BAT)**. FOLDER LOCK allows users to hide and reveal a private folder using a password-protected command-line interface without installing additional software.

The application uses Windows folder renaming and file attributes to disguise the `Private` folder as a Control Panel system object. Users can lock the folder, hide it from normal File Explorer browsing, and unlock it by entering the configured password.

---

## ✨ Features

### 🔒 Folder Locking
- Locks the `Private` folder using a simple command.
- Renames the folder to a Control Panel-style system identifier.
- Applies Hidden and System attributes.
- Hides the folder from normal File Explorer browsing.
- Displays a successful locking message.

### 🔓 Password-Based Unlocking
- Requests a password before unlocking.
- Checks the entered password against the configured password.
- Restores the original folder name.
- Removes Hidden and System attributes.
- Displays success or failure messages.

### 📁 Automatic Folder Creation
- Automatically creates the `Private` folder when it does not exist.
- Creates the folder on the first execution.
- Allows users to place their personal files inside it.

### 🖥️ Simple Command-Line Interface
- Interactive console-based operation.
- Lock confirmation using Y/N.
- Password verification.
- Invalid choice handling.
- Clear success and error messages.

### ⚡ Lightweight Windows Utility
- Developed entirely using Windows Batch.
- No Python installation required.
- No Node.js installation required.
- No database required.
- No third-party libraries required.
- Runs directly through a `.bat` file.

---

## 🧰 Tech Stack

| Technology | Purpose |
|---|---|
| Windows Batch | Application logic and automation |
| CMD | Command-line interface |
| `REN` | Renames the folder |
| `ATTRIB` | Changes Hidden and System attributes |
| `MD` | Creates the Private folder |
| `IF` | Password and condition checking |
| `SET /P` | Accepts user input |
| `ECHO` | Displays application messages |

---

## 📁 Project Structure

```text
Folder-Lock/
│
├── Folder Lock.bat
│
├── README.md
│
└── LICENSE
```

### File Description

| File | Description |
|---|---|
| `Folder Lock.bat` | Main application containing the folder-locking and unlocking logic. |
| `README.md` | Project documentation. |
| `LICENSE` | Project license information. |

---

## ⚙️ How It Works

FOLDER LOCK operates using Windows Batch commands.

### 1. Application Startup

When the user executes `Folder Lock.bat`, the application checks whether the disguised folder exists.

- If the locked folder exists, it proceeds to password verification.
- If the `Private` folder does not exist, it creates one.
- If the `Private` folder exists, it displays the locking confirmation.

### 2. Creating the Private Folder

When the application is executed for the first time, it creates a folder named:

```text
Private
```

Users can place their files inside this folder.

### 3. Locking the Folder

When the user confirms the locking operation using `Y`, the application:

1. Renames `Private` to a Control Panel-style folder name.
2. Applies the Hidden attribute.
3. Applies the System attribute.
4. Displays a successful locking message.

The disguised folder name is:

```text
Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}
```

### 4. Unlocking the Folder

When the user executes the application again, it detects the disguised folder.

The application then:

1. Requests the unlock password.
2. Verifies the entered password.
3. Removes Hidden and System attributes.
4. Renames the folder back to `Private`.
5. Displays a successful unlocking message.

### 5. Password Verification

The application uses a predefined password stored in the batch script.

Replace the placeholder:

```bat
YOUR_PASSWORD_HERE
```

With your preferred password.

---

## 🚀 Installation

### Prerequisites

- Windows 10 or Windows 11.
- Windows Command Prompt.
- A computer with standard Windows file-system access.

No additional software or runtime installation is required.

### Quick Start

**1. Clone the repository**

```bash
git clone https://github.com/rsamwilson2323-cloud/Folder-Lock.git
```

**2. Open the project directory**

```bash
cd Folder-Lock
```

**3. Configure your password**

Open `Folder Lock.bat` using Notepad or another text editor.

Find:

```bat
YOUR_PASSWORD_HERE
```

Replace it with your preferred password.

**4. Run the application**

Double-click:

```text
Folder Lock.bat
```

**5. Create your private folder**

On the first execution, the application automatically creates the `Private` folder.

Place your files inside it.

---

## 📖 Usage

### Step 1: First Execution

Run the batch file.

Expected output:

```text
Private folder created successfully.

Press any key to continue...
```

### Step 2: Add Your Files

Open the newly created `Private` folder and add your files.

Example:

```text
Private/
│
├── Documents/
├── Photos/
├── Projects/
└── Personal Files/
```

### Step 3: Lock the Folder

Execute the batch file again.

The application displays:

```text
Are you sure you want to lock the folder? (Y/N)
```

Enter:

```text
Y
```

The application hides and renames the folder.

Expected output:

```text
Folder locked successfully.
```

### Step 4: Unlock the Folder

Execute `Folder Lock.bat` again.

Enter your configured password when prompted:

```text
Enter password to unlock folder:
```

After successful verification:

```text
Folder unlocked successfully.
```

Your original `Private` folder will become accessible again.

---

## 🔐 Locking Mechanism

The application uses two primary Windows commands.

### Folder Renaming

```bat
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
```

Changes the folder name to a Control Panel-style identifier.

### File Attribute Modification

```bat
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
```

Applies:

- `+h` — Hidden attribute.
- `+s` — System attribute.

To restore the folder:

```bat
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
```

These commands control folder visibility and attributes rather than encrypting its contents.

---

## ⚠️ Limitations

- Designed specifically for Windows.
- Uses folder hiding and renaming rather than encryption.
- The password is stored in plain text inside the batch file.
- Users with access to the script can inspect its password.
- Hidden folders can be accessed by enabling the appropriate File Explorer visibility settings.
- Files inside the folder are not encrypted.
- Does not provide advanced user authentication.
- Does not protect against administrator-level access.
- Does not include a graphical user interface.
- Does not provide automatic password recovery.

**Important:** FOLDER LOCK is a basic folder-hiding utility, not a secure data-protection or encryption solution. Do not use it as the sole protection for confidential or sensitive information.

---

## 🔒 Privacy and Security

FOLDER LOCK operates locally on the Windows computer.

- No internet connection is required.
- No cloud storage is used.
- No external server is involved.
- Files remain in the local folder.
- No database is required.

For stronger protection of sensitive files, use a reputable encryption solution such as BitLocker or an encrypted container.

---

## 🗺️ Future Improvements

Potential improvements for future versions:

- Modern graphical user interface.
- Secure password hashing.
- Actual file and folder encryption.
- Multiple folder support.
- Password change functionality.
- Password recovery options.
- Automatic folder locking.
- Custom folder names.
- Improved input validation.
- Lock and unlock activity history.
- Multi-user support.
- Enhanced security controls.

---

## 📄 License

This project is distributed under the **MIT License**. See the [LICENSE](LICENSE) file for complete license information.

---

## 👨‍💻 Author

**R. Sam Wilson**

- GitHub: https://github.com/rsamwilson2323-cloud
- Repository: https://github.com/rsamwilson2323-cloud/Folder-Lock

---

⭐ If you find this project useful, consider giving the repository a star!

*Built as a lightweight Windows utility for simple folder hiding and password-based folder access using Batch scripting.*
