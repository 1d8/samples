#include <windows.h>

void pop_message_box(char* message, char* title) {
    MessageBox(NULL, message, title, MB_OK);
}

int main() {
    char* message = "Example Sample";
    char* title = "MITRE ROBUST TTP PROJECT";
    pop_message_box(message, title);
    return 0;
}
