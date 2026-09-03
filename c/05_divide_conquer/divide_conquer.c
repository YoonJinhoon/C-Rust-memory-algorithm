#include <stdio.h>

// Find the maximum value in an array using Divide and Conquer
int find_max_divide_conquer(const int arr[], int left, int right) {
    // Safe guard for invalide bounds
    if (left > right) {
        return -1; 
    }

    // Base case: if only one element remains, return it
    if (left == right) {
        return arr[left];
    }

    // Calculate midpoint safely to prevent integer overflow
    int mid = left + (right - left) / 2;

    // Recursively find the maximum in the left half
    int left_max = find_max_divide_conquer(arr, left, mid);

    // Recursively find the maximum in the right half
    int right_max = find_max_divide_conquer(arr, mid + 1, right);

    // Return the larger of the two values using a ternary operator
    return (left_max > right_max) ? left_max : right_max;
}

int main(void) {
    // Test case 1
    int arr1[] = {3, 5, 1, 8, 2, 9, 4};
    int size1 = sizeof(arr1) / sizeof(arr1[0]);
    int result1 = find_max_divide_conquer(arr1, 0, size1 - 1);

    printf("Array 1 Max: %d\n", result1);

    // Test case 2
    int arr2[] = {10, 20, 30, 40, 50};
    int size2 = sizeof(arr2) / sizeof(arr2[0]);
    int result2 = find_max_divide_conquer(arr2, 0, size2 - 1);

    printf("Array 2 Max: %d\n", result2);

    // Test case 3
    int arr3[] = {100};
    int size3 = sizeof(arr3) / sizeof(arr3[0]);
    int result3 = find_max_divide_conquer(arr3, 0, size3 - 1);

    printf("Array 3 Max: %d\n", result3);

    return 0;
}
