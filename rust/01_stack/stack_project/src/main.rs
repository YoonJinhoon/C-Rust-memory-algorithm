pub struct Stack {
    data: [i32; 5],
    top: isize,
}

// 1. Inherent methods belong in the struct's own impl block
impl Stack {
   pub fn new() -> Self {
        Stack {
            data: [0; 5],
            top: -1,
        }
    }

    pub fn push(&mut self, value: i32) {
        if self.top >= 4 {
            println!("Stack Overflow!");
            return;
        }
        self.top += 1;
        self.data[self.top as usize] = value;
        println!("Pushed {} -> Index: {}", value, self.top);
    }

    pub fn pop(&mut self) -> Option<i32> {
        if self.top < 0 {
            println!("Stack Underflow!");
            None
        } else {
            let val = self.data[self.top as usize];
            println!("Popped {} <- index: {}", val, self.top);
            self.top -= 1;
            Some(val)
        }
    }
}

// 2. The Default trait implementation stays clean and focused
impl Default for Stack {
    fn default() -> Self {
        Self::new()
    }
}

fn main() {
    let mut s = Stack::new();
    
    println!("--- Pushing to Stack ---");
    s.push(10);
    s.push(20);
    s.push(30);
    
    println!("\n--- Popping from Stack ---");
    s.pop();
    s.pop();
}    
