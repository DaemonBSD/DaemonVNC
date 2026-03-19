#ifndef SECURE_CRT_COMPAT_H
#define SECURE_CRT_COMPAT_H
#ifdef __MINGW32__
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#ifndef _TRUNCATE
#define _TRUNCATE ((size_t)-1)
#endif

// Macro overloading for strcpy_s and strcat_s
#define GET_STR_S(_1,_2,_3,NAME,...) NAME

#define strcpy_s(...) GET_STR_S(__VA_ARGS__, strcpy_s_3, strcpy_s_2)(__VA_ARGS__)
#define strcpy_s_3(d,s,src) strncpy(d,src,(s)-1); (d)[(s)-1] = '\0'
#define strcpy_s_2(d,s) strcpy(d,s)

#define strcat_s(...) GET_STR_S(__VA_ARGS__, strcat_s_3, strcat_s_2)(__VA_ARGS__)
#define strcat_s_3(d,s,src) strncat(d,src,(s)-strlen(d)-1)
#define strcat_s_2(d,s) strcat(d,s)

#define strncat_s(dest, size, src, count) strncat(dest, src, (count == (size_t)-1) ? (size - strlen(dest) - 1) : count)
#define sprintf_s(buf, size, fmt, ...) snprintf(buf, size, fmt, ##__VA_ARGS__)
#define _snprintf_s(buf, size, count, fmt, ...) snprintf(buf, (count == (size_t)-1) ? size : count, fmt, ##__VA_ARGS__)
#define wcsncat_s(dest, size, src, count) wcsncat(dest, src, (count == (size_t)-1) ? (size - wcslen(dest) - 1) : count)
#define _ui64toa_s(val, buf, size, rad) _ui64toa(val, buf, rad)
#define _stricmp stricmp
#define _strnicmp strnicmp
#define _wcsicmp wcsicmp
#define strerror_s(buf, size, err) strncpy(buf, strerror(err), (size)-1)

#endif
#endif
