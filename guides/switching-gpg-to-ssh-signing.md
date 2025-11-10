# Switching from GPG to SSH Commit Signing

A guide for migrating from GPG commit signing to SSH commit signing on a new machine or when switching signing methods. SSH signing is simpler, reuses your SSH key, and doesn't require GPG installation or dealing with TTY issues.

## Guide Goals

- Help a developer switch from GPG to SSH commit signing
- Provide step-by-step instructions for setting up SSH signing on a new machine
- Ensure commits are signed and verified on GitHub

## Steps

### 1. Generate SSH Key (if needed)

Check for existing SSH keys:
```bash
ls -la ~/.ssh/id_*.pub
```

If you don't have an SSH key, generate one:
```bash
ssh-keygen -t ed25519 -C "your-email@example.com" -f ~/.ssh/id_ed25519 -N ""
```

### 2. Verify SSH Key Path

The shared `.gitconfig` file is already configured for SSH signing. Just verify your SSH key filename matches what's configured:

Check the config:
```bash
cat ~/Documents/public-repos/dot-files/.gitconfig
```

The `signingkey` should point to `~/.ssh/id_ed25519.pub`. If you used a different filename in step 1, either:
- Regenerate the key with the expected filename, or
- Update the `signingkey` path in `.gitconfig` to match your key's filename

### 3. Add SSH Key to GitHub

1. Copy your public key:
   ```bash
   cat ~/.ssh/id_ed25519.pub | pbcopy
   ```

2. Go to GitHub: https://github.com/settings/keys

3. Click "New SSH key"

4. Fill in:
   - **Title**: "Macbook - Commit Signing" (or machine name)
   - **Key type**: Select "Signing Key" (not Authentication Key)
   - **Key**: Paste your public key

5. Click "Add SSH key"

### 4. Create Local Allowed Signers File

The allowed signers file enables local verification of SSH signatures. This file is machine-specific (contains your machine's SSH public key), so create it locally:

```bash
mkdir -p ~/.config/git
echo "$(git config user.email) $(cat ~/.ssh/id_ed25519.pub)" > ~/.config/git/allowed_signers
```

This file stays on your local machine and is not committed to the repo.

### 5. Verify Configuration

Check that Git sees the SSH signing configuration:
```bash
git config --get user.signingkey
git config --get gpg.format
git config --get commit.gpgsign
```

Expected output:
```
~/.ssh/id_ed25519.pub
ssh
true
```

### 6. Test Commit Signing

Make a test commit:
```bash
echo "test" >> test.txt
git add test.txt
git commit -m "Test SSH signing"
```

Verify the commit is signed:
```bash
git log --show-signature -1
```

You should see "Good signature" in the output.

## References

- [GitHub Docs: About commit signature verification](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)
- [GitHub Docs: Generating a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [GitHub Docs: Adding a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
