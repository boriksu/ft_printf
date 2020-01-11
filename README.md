# ft_printf
ft_printf is a project that aims to mimic the printf function (included in &lt;stdio.h>)

For example:
```c
ft_printf("%s loves all of her %d cats\n", "Kate", 5);
printf("%s loves all of her %d cats\n", "Kate", 5);
```
Should give back:
```console
Kate loves all of her 5 cats
Kate loves all of her 5 cats
```

The project is complicated as the number of parameters is indefinite.  
  
ft_printf must achieve the following mandatory requirements:  
  
* Manage the following conversions: `s`, `p`, `d`, `i`, `o`, `u`, `x`, `X`, `c`
* Mahage the conversion `f` with flags `l`, `L`
* Manage `%%`
* Manage the flags `#`, `0`, `-`, `+`, `*` & `space`
* Manage the minimum field-width
* Manage the precision
* Manage the flags `hh`, `h`, `l`, `ll`, `j`, & `z`.

Allowed functions are `write`, `malloc`, `free`, `exit` and the functions of `3 stdarg`. Everything else is forbidden.
