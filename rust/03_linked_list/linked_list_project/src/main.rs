struct Node {
    data: i32,
    next: Option<Box<Node>>, // Safe heap pointer (Option = can be null/None, Box = heap allocated)
}

fn main() {
    // 1. Build the nodes from back to front
    let third = Node {
        data: 30,
        next: None, // None is Rust's safe version of NULL
    };

    let second = Node {
        data: 20,
        next: Some(Box::new(third)), // Wrap third in a heap Box
    };

    let head = Node {
        data: 10,
        next: Some(Box::new(second)), // Wrap Second in a heap Box
    };

    // 2. Traverse and print values
    let mut current = &head;
    let mut index = 0;

    println!("=== Rust Linked List Inspection ===");
    while let Some(next_node) = &current.next {
        println!("Node {} | Value: {}", index, current.data);
        current = next_node;
        index += 1;        
    }
    // Print the final node
    println!("Node {} | Value: {}", index, current.data);
    println!("-----------------------------------");
    
    // Notice: No manual free() needed!
    // Rust automatically cleans up the heap memory when main exits.
}
