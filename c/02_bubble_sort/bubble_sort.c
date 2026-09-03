#include <stdio.h>

// Function to perform optimized bubble sort
void bubble_sort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        int swapped = 0;

        printf("\n--- Pass %d --- \n", i + 1);

        // Last i elements are already in place
        for (int j = 0; j < n - i - 1; j++) {
            printf("Comparing arr[%d] (%d at %p) and arr[%d] (%d at %p)\n",
                    j, arr[j], (void *)&arr[j],
                    j + 1, arr[j + 1], (void *)&arr[j + 1]);

            if (arr[j] > arr[j + 1]) {
                // Swap adjacent elements
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
                swapped = 1;
                printf(" -> Swapped! New values: arr[%d]=%d, arr[%d]=%d\n",
                        j, arr[j], j + 1, arr[j + 1]);
            }
        }

        // If no two elements were swapped, array is sorted
        if (swapped == 0) {
            printf("No swaps in this pass. Array is already sorted!\n");
            break;
        }
    }
}

// Utility function to print the array and its exact memory addresses
void print_array_with_addresses(const char *label, int arr[], int n) {
    printf("%s\n", label);
    for (int i = 0; i < n; i++) {
        printf("Index %d | value: %2d | Address: %p\n", i, arr[i], (void *)&arr[i]);
    }
    printf("------------------------------------\n");
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr) / sizeof(arr[0]);
    
    print_array_with_addresses("=== Original Array & Memory Layout ===", arr, n);
    
    bubble_sort(arr, n);
    
    print_array_with_addresses("\n=== Sorted Array & Memory Layout ===", arr, n);

    return 0;
}
