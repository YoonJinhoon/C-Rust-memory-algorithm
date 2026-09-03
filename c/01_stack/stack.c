#include <stdio.h>

#define MAX_SIZE 5

typedef struct {
    int data[MAX_SIZE];
    int top;
} Stack;

// Initialize stack
void init_stack(Stack *s) {
    s->top = -1;
}

// Push element and inspect its memory address
void push(Stack *s, int value) {
    if (s->top >= MAX_SIZE - 1) {
        printf("Stack Overflow!\n");
        return;
    }
    s->top++;
    s->data[s->top] = value;

    // Print the exact memory address where this integer lands
    printf("Value: %2d | Address: %p\n", value, (void*)&s->data[s->top]);
}

int pop(Stack *s) {
    if (s->top < 0) {
        printf("Stack Underflow!\n");
        return -1;
    }

    // Print the exact memory address the integer is popped from
    printf("Popped %d <- Memory Address: %p\n", s->data[s->top], (void*)&s->data[s->top]);

    return s->data[s->top--];
}

int main() {
    Stack s;
    init_stack(&s);
    
    printf("--- Pushing to Stack ---\n");
    push(&s, 10);
    push(&s, 20);
    push(&s, 30);

    printf("\n--- Popping from Stack ---\n");
    pop(&s);
    pop(&s);

    return 0;
}
