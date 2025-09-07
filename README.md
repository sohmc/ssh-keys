# Michael Soh's Public Keys

This repository contains all of my public keys.  It used to be only SSH keys but now they also house my GPG/PGP public keys.

This repository automates the creation of an `authorized_keys` file of SSH authentication that can be pulled through a script on an as-needed basis.

## Validating my keys

ssh keys should be validated by comparing public keys to those pushed to this repository.  Most recent commits should be [verified by Github](https://docs.github.com/en/authentication/managing-commit-signature-verification) (assuming I didn't forget to enable signing upon commit).  You can be *reasonably* assured that keys committed prior to me enabling verified commits (AND still exist in this repo) are still under my possession and control.

I am in the process of having my GPG/PGP public keys certified (signed).  As this is a manual process, please be patient with me.  In the mean time, you are welcome to verify the public key that is stored in `gpg-public_keys/` matches the one you have.  Additionally, I publish my keys on the following servers:

- https://keyserver.ubuntu.com
- https://keys.openpgp.org

Until my GPG/PGP keys are certified, please feel free to ask me for my full key fingerprint when you see me:

```
651C CCD2 1E48 57D9 2276 8A3F 0310 CFB4 756F 4B9D
  - or - 
651CCCD21E4857D922768A3F0310CFB4756F4B9D
```

## Verifying ownership

Coming soon!


# LICENSE

Public keys aren't necessarily copyrightable.  However, since they are useless without private keys, if a license is needed, all keys contained within the `*-public_keys/` directories are released via the [MIT License](https://choosealicense.com/licenses/mit/).

Any scripts, yaml, configuration files, etc. contained within this repository are released via the [AGPLv3 Public License](https://choosealicense.com/licenses/agpl-3.0/).

This README and any documentation is released via the [Creative Commons BY-NC-SA 4.0 license](https://creativecommons.org/licenses/by-nc-sa/4.0/).
