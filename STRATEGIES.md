# Strategies.md

Quick notes about strategies I've developed to handle common, but infrequent development scenarios that don't fit neatly into shell commands, config files, etc.

## GitHub Strategies

### GitHub Personal Access Token Strategies

I've switched to use the (in beta) fine-grained Personal Access Tokens (PATs) that expire every 90 days. For now I'm keeping them fairly repository bound, but we'll see how strict I remain in the future.

#### **Switching between PATs**

The best way I've found to manage this is to use my no-reply github email as a username, and then simply edit the github token in my mac Keychain Access whenever I need to switch to a different PAT:

* Cmd+Space --> Keychain Access
* Search for `github.com`
* Right click, select `Get Info`
* Select `Show password` checkbox, and enter mac password
* Set password to the PAT with access to the repo you're currently working with
* Select `Save Changes`