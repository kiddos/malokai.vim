""
"" Vim Color Scheme
"" Maintainer: Joseph Yu
"" Last Update: 2015/8/11
""

"" C ansi Function list
" assert.h
syn keyword	cAnsiFunction assert
" ctype.h
syn keyword	cAnsiFunction isalnum
syn keyword	cAnsiFunction isalpha
syn keyword	cAnsiFunction iscntrl
syn keyword	cAnsiFunction isdigit
syn keyword	cAnsiFunction isgraph
syn keyword	cAnsiFunction islower
syn keyword	cAnsiFunction isprint
syn keyword	cAnsiFunction ispunct
syn keyword	cAnsiFunction isspace
syn keyword	cAnsiFunction isupper
syn keyword	cAnsiFunction isxdigit
syn keyword	cAnsiFunction toupper
syn keyword	cAnsiFunction tolower
" errno.h
syn keyword	cAnsiFunction errno
" locale.h
syn keyword	cAnsiFunction setlocale
" math.h
syn keyword	cAnsiFunction acos
syn keyword	cAnsiFunction asin
syn keyword	cAnsiFunction atan
syn keyword	cAnsiFunction atan2
syn keyword	cAnsiFunction ceil
syn keyword	cAnsiFunction cos
syn keyword	cAnsiFunction cosh
syn keyword	cAnsiFunction exp
syn keyword	cAnsiFunction fabs
syn keyword	cAnsiFunction floor
syn keyword	cAnsiFunction fmod
syn keyword	cAnsiFunction frexp
syn keyword	cAnsiFunction ldexp
syn keyword	cAnsiFunction log
syn keyword	cAnsiFunction log10
syn keyword	cAnsiFunction modf
syn keyword	cAnsiFunction pow
syn keyword	cAnsiFunction sin
syn keyword	cAnsiFunction sinh
syn keyword	cAnsiFunction sqrt
syn keyword	cAnsiFunction tan
syn keyword	cAnsiFunction tanh
" setjmp.h
syn keyword cAnsiFunction setjmp
syn keyword cAnsiFunction longjmp
" signal.h
syn keyword cAnsiFunction signal
syn keyword cAnsiFunction raise
" stdarg.h
syn keyword cAnsiFunction va_start
syn keyword cAnsiFunction va_arg
syn keyword cAnsiFunction va_end
" stdio.h
syn keyword cAnsiFunction clearerr
syn keyword cAnsiFunction fclose
syn keyword cAnsiFunction feof
syn keyword cAnsiFunction fflush
syn keyword cAnsiFunction fgetc
syn keyword cAnsiFunction fgetpos
syn keyword cAnsiFunction fgets
syn keyword cAnsiFunction fopen
syn keyword cAnsiFunction fprintf
syn keyword cAnsiFunction fputc
syn keyword cAnsiFunction fputs
syn keyword cAnsiFunction fread
syn keyword cAnsiFunction freopen
syn keyword cAnsiFunction fscanf
syn keyword cAnsiFunction fseek
syn keyword cAnsiFunction fsetpos
syn keyword cAnsiFunction ftell
syn keyword cAnsiFunction fwrite
syn keyword cAnsiFunction getc
syn keyword cAnsiFunction getchar
syn keyword cAnsiFunction gets
syn keyword cAnsiFunction perror
syn keyword cAnsiFunction printf
syn keyword cAnsiFunction putchar
syn keyword cAnsiFunction puts
syn keyword cAnsiFunction remove
syn keyword cAnsiFunction rewind
syn keyword cAnsiFunction scanf
syn keyword cAnsiFunction setbuf
syn keyword cAnsiFunction setvbuf
syn keyword cAnsiFunction sprintf
syn keyword cAnsiFunction sscanf
syn keyword cAnsiFunction tmpfile
syn keyword cAnsiFunction tmpnam
syn keyword cAnsiFunction ungetc
syn keyword cAnsiFunction vfprintf
syn keyword cAnsiFunction vprintf
syn keyword cAnsiFunction vsprintf
" stdlib.h
syn keyword cAnsiFunction abort
syn keyword cAnsiFunction abs
syn keyword cAnsiFunction atexit
syn keyword cAnsiFunction atof
syn keyword cAnsiFunction atoi
syn keyword cAnsiFunction atol
syn keyword cAnsiFunction bsearch
syn keyword cAnsiFunction calloc
syn keyword cAnsiFunction div
syn keyword cAnsiFunction exit
syn keyword cAnsiFunction getenv
syn keyword cAnsiFunction free
syn keyword cAnsiFunction labs
syn keyword cAnsiFunction ldiv
syn keyword cAnsiFunction malloc
syn keyword cAnsiFunction mblen
syn keyword cAnsiFunction mbstowcs
syn keyword cAnsiFunction mbtowc
syn keyword cAnsiFunction qsort
syn keyword cAnsiFunction rand
syn keyword cAnsiFunction realloc
syn keyword cAnsiFunction strtod
syn keyword cAnsiFunction strtol
syn keyword cAnsiFunction strtoul
syn keyword cAnsiFunction srand
syn keyword cAnsiFunction system
syn keyword cAnsiFunction wctomb
syn keyword cAnsiFunction wcstombs
" string.h
syn keyword cAnsiFunction memchr
syn keyword cAnsiFunction memcmp
syn keyword cAnsiFunction memcpy
syn keyword cAnsiFunction memmove
syn keyword cAnsiFunction memset
syn keyword cAnsiFunction strcat
syn keyword cAnsiFunction strchr
syn keyword cAnsiFunction strcmp
syn keyword cAnsiFunction strcoll
syn keyword cAnsiFunction strcpy
syn keyword cAnsiFunction strcspn
syn keyword cAnsiFunction strerror
syn keyword cAnsiFunction strlen
syn keyword cAnsiFunction strncat
syn keyword cAnsiFunction strncmp
syn keyword cAnsiFunction strncpy
syn keyword cAnsiFunction strpbrk
syn keyword cAnsiFunction strrchr
syn keyword cAnsiFunction strspn
syn keyword cAnsiFunction strstr
syn keyword cAnsiFunction strtok
syn keyword cAnsiFunction strxfrm
" time.h
syn keyword cAnsiFunction asctime
syn keyword cAnsiFunction clock
syn keyword cAnsiFunction ctime
syn keyword cAnsiFunction difftime
syn keyword cAnsiFunction gmtime
syn keyword cAnsiFunction localtime
syn keyword cAnsiFunction mktime
syn keyword cAnsiFunction strftime
syn keyword cAnsiFunction time
"" POSIX functions
" dirent.h
syn keyword cPOSIXFunction opendir
syn keyword cPOSIXFunction closedir
syn keyword cPOSIXFunction readdir
syn keyword cPOSIXFunction rewinddir
syn keyword cPOSIXFunction scandir
syn keyword cPOSIXFunction seekdir
syn keyword cPOSIXFunction telldir
" unistd.h
syn keyword cPOSIXFunction access
syn keyword cPOSIXFunction alarm
syn keyword cPOSIXFunction chdir
syn keyword cPOSIXFunction chown
syn keyword cPOSIXFunction close
syn keyword cPOSIXFunction chroot
syn keyword cPOSIXFunction ctermid
syn keyword cPOSIXFunction cuserid
syn keyword cPOSIXFunction dup
syn keyword cPOSIXFunction dup2
syn keyword cPOSIXFunction execl
syn keyword cPOSIXFunction execle
syn keyword cPOSIXFunction execlp
syn keyword cPOSIXFunction execv
syn keyword cPOSIXFunction execve
syn keyword cPOSIXFunction execvp
syn keyword cPOSIXFunction fchdir
syn keyword cPOSIXFunction fork
syn keyword cPOSIXFunction fpathconf
syn keyword cPOSIXFunction getegid
syn keyword cPOSIXFunction geteuid
syn keyword cPOSIXFunction gethostname
syn keyword cPOSIXFunction getopt
syn keyword cPOSIXFunction getgid
syn keyword cPOSIXFunction getgroups
syn keyword cPOSIXFunction getlogin
syn keyword cPOSIXFunction getpgrp
syn keyword cPOSIXFunction getpid
syn keyword cPOSIXFunction getppid
syn keyword cPOSIXFunction getuid
syn keyword cPOSIXFunction isatty
syn keyword cPOSIXFunction link
syn keyword cPOSIXFunction lseek
syn keyword cPOSIXFunction mkdir
syn keyword cPOSIXFunction open
syn keyword cPOSIXFunction pathconf
syn keyword cPOSIXFunction pause
syn keyword cPOSIXFunction pipe
syn keyword cPOSIXFunction read
syn keyword cPOSIXFunction rename
syn keyword cPOSIXFunction rmdir
syn keyword cPOSIXFunction setgid
syn keyword cPOSIXFunction setpgid
syn keyword cPOSIXFunction setsid
syn keyword cPOSIXFunction setuid
syn keyword cPOSIXFunction sleep
syn keyword cPOSIXFunction sysconf
syn keyword cPOSIXFunction tcgetpgrp
syn keyword cPOSIXFunction tcsetpgrp
syn keyword cPOSIXFunction ttyname
syn keyword cPOSIXFunction unlink
syn keyword cPOSIXFunction write
" conio.h
syn keyword cPOSIXFunction clrscr
syn keyword cPOSIXFunction getch
syn keyword cPOSIXFunction getche

" C Ansi Constant







syn match 	cSymbol		"#"
syn keyword	cKeyword	include
syn keyword cDefine		define
syn keyword cPreproc	undef if else elif endif
syn keyword cPreproc	ifdef ifndef
syn match	cInclude	"#include *["<][0-9a-zA-Z./]*[">]" contains=cSymbol,cKeyword
syn match	cBraces		"[{}]"
"syn match	cIdentifier	"[_$]*[a-zA-Z_$][0-9a-zA-Z_$]*"

hi def link cKeyword Keyword
hi def link cInclude Include
hi def link cDefine Define
hi def link cPreproc PreProc
"hi def link cIdentifier Identifier
hi def link cInclude Include
hi def link cBraces Delimiter
hi def link cSymbol Symbol

hi	Symbol		cterm=bold		ctermfg=255		gui=bold	guifg=#FFFFFF
