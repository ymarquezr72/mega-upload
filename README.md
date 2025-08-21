# Upload file to Mega

This GitHub action allows you to upload a file to Mega.

## Usage

```yml
- name: Upload README.md
  uses: ymarquezr72/mega-upload@1.0.2
  with:
    file: README.md
  env:
    USERNAME: ${{ secrets.MEGA_USERNAME }}
    PASSWORD: ${{ secrets.MEGA_PASSWORD }}
```

**Required Parameters:**

- `file | folder\file | *.ext`: The source file or group files that should be uploaded to mega folder.
- `mega folder`: The mega folder destination.

**Environmetal variables:**

- `USERNAME`: Mega username, should be provided from a secret.
- `PASSWORD`: Mega password, should be provided from a secret.

----
Thanks for Difegue/action-megacmd@master and Siege-Wizard/mega-upload:main
