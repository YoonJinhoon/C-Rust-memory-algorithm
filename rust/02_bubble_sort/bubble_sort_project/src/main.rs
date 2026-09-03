// Function to perform optimized bubble sort with memory insepection

fn bubble_sort(arr: &mut [i32]) {
    let n = arr.len();
    for i in 0..n - 1 {
        let mut swapped = false;

        println!("\n--- Pass {} ---", i + 1);

        // Last i elements are already in place
        for j in 0..n - i - 1 {
            // &arr[j] as *const i32 casts the Rust reference into a raw pointer for {:p} formatting
            println!(
                "Comparing arr[{}] ({} at {:p}) and arr[{}] ({} at {:p})",
                j, arr[j], &arr[j] as *const i32,
                j + 1, arr[j + 1], &arr[j + 1] as *const i32
            );

            if arr[j] > arr[j + 1] {
                // Idiomatic Rust swap method
                arr.swap(j, j + 1);
                swapped = true;

                println!(
                    " -> Swapped! New values: arr[{}]={}, arr[{}]={}",
                    j, arr[j], j + 1, arr[j + 1]
                );
            }
        }

        // If no two elements were swapped, array is sorted
        if !swapped {
            println!("No swaps in this pass. Array is already sorted!");
            break;
        }
    }
}

// Utility function to print array values and memory addresses
fn print_array_with_addresses(label: &str, arr: &[i32]) {
    println!("{label}");
    for (i, &val) in arr.iter().enumerate() {
        println!("Index {} | Value: {:2} | Address: {:p}", i, val, &arr[i] as *const i32);
    }
    println!("----------------------------------------");
 }

fn main() {
    let mut arr = [64, 34, 25, 12, 22, 11, 90];

    print_array_with_addresses("=== Original Array & Memory Layout ===", &arr);

    bubble_sort(&mut arr);

    print_array_with_addresses("\n=== Sorted Array & Memory Layout ===", &arr);
}   
