
## Creating test.txt example
```sh
rm test.txt
for f in cz_shadows8.txt cz_shadows9.txt; do (cat "${f}"; echo) >> test.txt; done
```

Or use the make command:

```sh
make test.txt FILES="cz_light6.txt cz_light7.txt cz_light8.txt"
```
