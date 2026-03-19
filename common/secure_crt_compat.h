#ifndef SECURE_CRT_COMPAT_H
#define SECURE_CRT_COMPAT_H
#ifdef __MINGW32__
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

#ifndef _TRUNCATE
#define _TRUNCATE ((size_t)-1)
#endif

/* Simple inline replacements for Secure CRT functions - no VA_ARGS tricks */

static inline char* _strcpy_s_impl(char* d, size_t s, const char* src) {
    strncpy(d, src, s - 1);
    d[s - 1] = '\0';
    return d;
}
static inline char* _strcat_s_impl(char* d, size_t s, const char* src) {
    size_t dlen = strlen(d);
    if (dlen < s - 1) {
        strncat(d, src, s - dlen - 1);
    }
    return d;
}
static inline char* _strncat_s_impl(char* d, size_t s, const char* src, size_t count) {
    size_t dlen = strlen(d);
    size_t avail = s - dlen - 1;
    size_t n = (count == (size_t)-1) ? avail : (count < avail ? count : avail);
    strncat(d, src, n);
    return d;
}

#define strcpy_s(d, s, src)             _strcpy_s_impl(d, s, src)
#define strcat_s(d, s, src)             _strcat_s_impl(d, s, src)
#define strncat_s(d, s, src, count)     _strncat_s_impl(d, s, src, count)
#define sprintf_s(buf, size, fmt, ...)  snprintf(buf, size, fmt, ##__VA_ARGS__)
#define _snprintf_s(buf, size, count, fmt, ...) snprintf(buf, (count == (size_t)-1) ? (size) : (count), fmt, ##__VA_ARGS__)
#define wcsncat_s(d, s, src, count)     wcsncat(d, src, (count == (size_t)-1) ? (s - wcslen(d) - 1) : (count))
#define mbstowcs_s(outSize, wStr, mbStr, count) (*(outSize) = mbstowcs(wStr, mbStr, count), 0)
#define _ui64toa_s(val, buf, size, rad) _ui64toa(val, buf, rad)
#define strerror_s(buf, size, err)      strncpy(buf, strerror(err), (size) - 1)

#endif /* __MINGW32__ */
#endif /* SECURE_CRT_COMPAT_H */
