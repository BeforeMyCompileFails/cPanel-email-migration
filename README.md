# cPanel Email Migration Script

A simple and effective Bash script to migrate email data between mailboxes on a cPanel-based server.

## ✅ Features

- Verifies the existence of the source email directory
- Uses `rsync` to copy all mailbox contents to the destination
- Displays progress and migration status
- Optionally allows deletion of the source mailbox after successful migration

## 🧰 Requirements

- A Linux environment (typically a cPanel server)
- Access to your server's mail directory
- `rsync` installed

## 🔧 Setup

Before running the script, edit the following variables to suit your server environment:

```bash
DOMAIN="YOUR-DOMAIN-HERE"         # e.g., example.com
SOURCE_EMAIL="SOURCE-EMAIL"       # e.g., john
DEST_EMAIL="DEST-EMAIL"           # e.g., john.backup
EMAIL_DIR="/home/username/mail/$DOMAIN"  # Replace 'username' with your cPanel user
```

## 🚀 Usage

1. Make the script executable:

```bash
chmod +x cPanel-email-migration.sh
```

2. Run the script:

```bash
./cPanel-email-migration.sh
```

3. *(Optional)* To remove the original email after successful migration, uncomment the line at the bottom of the script:

```bash
# rm -rf "$EMAIL_DIR/$SOURCE_EMAIL"
```

## 📝 Output

- On success: `Migration was successful`
- On failure: `Error: Migration failed`

## 👤 Author

Created by **Denis** (BeforeMyCompileFails) — 2025

---

Feel free to fork, customize, and contribute!
