fn binary_search(arr: &[i32], target: i32) -> i32 {
    let mut left = 0;
    let mut right = arr.len() as i32 - 1;

    while left <= right {
        let mid = (left + right) / 2;
        let mid_idx = mid as usize;

        if arr[mid_idx] == target {
            return mid;
        } else if arr[mid_idx] < target {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    -1
}

fn main() {
    let arr = [1, 3, 5, 7, 9, 11, 13];
    let target = 7;

    let result = binary_search(&arr, target);
    println!("Result index: {result}");
}
