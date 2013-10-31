Simple tcmalloc bindings for python

Usage:

    >>> import pytcm
    >>> pytcm.get_numeric_property("generic.current_allocated_bytes")
    2333896
    >>> pytcm.get_numeric_property("tcmalloc.pageheap_free_bytes")
    1212416
    >>> pytcm.get_numeric_property("tcmalloc.pageheap_unmapped_bytes")
    0
    >>> pytcm.release_free_memory()
    >>> pytcm.get_numeric_property("tcmalloc.pageheap_free_bytes")
    0
    >>> pytcm.get_numeric_property("tcmalloc.pageheap_unmapped_bytes")
    1212416
    >>> 
