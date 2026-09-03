// Find the maximum value in a slice using Divide and Conquer
fn find_max(arr: &[i32]) -> Option<i32> {

    // Base case: empty() {
    if arr.is_empty() {
        return None;
    }

    // Base case: single element remaining
    if arr.len() == 1 {
        return Some(arr[0]);
    }

    // Calculate midpoint
    let mid = arr.len() / 2;

    // Safely split the slice into two distinct sub-slices without raw indices
    let (left_half, right_half) = arr.split_at(mid);

    // Recursively conquer both halves
    let left_max = find_max(left_half);
    let right_max = find_max(right_half);

    // Combine results safely using pattern matching on Options
    match (left_max, right_max) {
        (Some(l), Some(r)) => Some(if l > r { l } else { r }),
        (Some(l), None) => Some(l),
        (None, Some(r)) => Some(r),
        (None, None) => None,
    }
}

fn main() {
    let arr1 = [3, 5, 1, 8, 2, 9, 4];
    let arr2 = [10, 20, 30, 40, 50];
    let arr3 = [100];
    let empty_arr: [i32; 0] = [];

    println!("Array 1 Max: {:?}", find_max(&arr1));
    println!("Array 2 Max: {:?}", find_max(&arr2));
    println!("Array 3 Max: {:?}", find_max(&arr3));
    println!("Empty Array Max: {:?}", find_max(&empty_arr));
}
