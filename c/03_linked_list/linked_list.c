#include <stdio.h>
#include <stdlib.h>	// Required for malloc() and free()

// Define the structure of a single node
struct Node {
    int data;
    struct Node *next;
};

int main() {
    // 1. Allocate nodes on the HEAP using malloc()
    struct Node *head = (struct Node*)malloc(sizeof(struct Node));
    struct Node *second = (struct Node*)malloc(sizeof(struct Node));
    struct Node *third = (struct Node*)malloc(sizeof(struct Node));

    // 2. Assign data and link the nodes together
    head->data = 10;
    head->next = second; // head points to second

    second->data = 20;
    second->next = third; // second points to third

    third->data = 30;
    third->next = NULL;   // third is the end of the list (null pointer)
    
    // 3. Traverse and print values along with their HEAP memory addresses
    struct Node *current = head;
    int index = 0;

    printf("=== Linked List Memory Insepction ===\n");
    while (current != NULL) {
        printf("Node %d | Value: %d | Address: %p | Next pointer Points To: %p\n",
        index, current->data, (void*)current, (void*)current->next);

        current = current->next;  // Jump to next node across the heap
        index++;
    }
    printf("-------------------------------------\n");

    // 4. Free the allocated heap memory to prevent memory leaks
    free(head);
    free(second);
    free(third);
        
    return 0;
}










