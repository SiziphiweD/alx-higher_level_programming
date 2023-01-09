#include <stdio.h>
#include <stdlib.h>
#include <Python.h>

void print_python_list_info(PyObject *p) {
    // Verify that the object is a list
    if (!PyList_Check(p)) {
        printf("ERROR: Object is not a list\n");
        return;
    }

    // Print the length of the list
    printf("Length of list: %ld\n", PyList_Size(p));

    // Print the items in the list
    printf("Items in list:\n");
    for (int i = 0; i < PyList_Size(p); i++) {
        PyObject *item = PyList_GetItem(p, i);
        printf("%d: ", i);
        PyObject_Print(item, stdout, 0);
        printf("\n");
    }
}
