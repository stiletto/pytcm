#
# CopyWTF (c) 2013, Stiletto <blasux@blasux.ru>
# Go read the fucking COPYING for fuck's sake
#

cdef extern from "/usr/include/gperftools/malloc_extension_c.h":
    int MallocExtension_GetNumericProperty(const char* name, size_t* value)
    void MallocExtension_ReleaseFreeMemory()

cpdef get_numeric_property(str name):
    cdef size_t value
    cdef int retcode
    retcode = MallocExtension_GetNumericProperty(name, &value)
    if retcode:
        return value
    else:
        raise Exception('GetNumericProperty failed')

cpdef release_free_memory():
    MallocExtension_ReleaseFreeMemory()
