#include <stdio.h>

int binary_search(const int *arr, int size, int target) {
    // Define left and right pointers
    int left = 0;
    int right = size - 1;

    // Write the While loop
    while (left <= right) {
        int mid = (left + right) / 2;

    // Calculate mid and compare
        if (arr[mid] == target)
            return mid;
        else if (arr[mid] < target)
            left = mid + 1;
        else
            right = mid - 1;
    }

    return -1;
}

int main() {
    int arr[] = {1, 3, 5, 7, 9, 11, 13};
    int size = sizeof(arr) / sizeof(arr[0]);
    int target = 7;

    int result = binary_search(arr, size, target);
    printf("Result index: %d\n", result);

    return 0;
}
