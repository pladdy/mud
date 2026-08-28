
## Creating test.txt example
```sh
rm test.txt
for f in cz_shadows8.txt cz_shadows9.txt; do (cat "${f}"; echo) >> test.txt; done
```
