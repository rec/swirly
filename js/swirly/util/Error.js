#ifndef __SWIRLY_UTIL_ERROR
#define __SWIRLY_UTIL_ERROR

#include <swirly/util/print.js>

#define ERROR(MSG, VALUE) \
    post('Error at', __FILE__, ':', __LINE__, ':', MSG, Print(VALUE), '\n')

#endif
