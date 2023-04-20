## Useful Ubuntu Commands
---

#### 1. View File [$ view]
---
``` view target_file.txt ```
- To view the file directly as normal file[without cli print]

#### 2. Stream Edit [$ sed]
---
``` sed 's/<search>/<replace>/g' target_file.txt ```

- To find and replace the content and display [without affecting file]
- 'g' --> Global search on entire file
- 's/' --> replace command

``` sed -i 's/<search>/<replace>/g' target_file.txt ```

- '-i' is to update the changes to the target_file

#### 3. Unlink [unlink]
---
``` unlink <symlink_file_path> ```

- To remove the sym link safly, without affecting the target file