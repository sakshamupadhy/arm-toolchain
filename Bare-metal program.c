#define UART0DR (*(volatile unsigned int *)0x101f1000)
#define UART0FR (*(volatile unsigned int *)0x101f1018)

void print(const char *str) {
    while (*str) {
        while (UART0FR & (1 << 5));
        UART0DR = *str++;
    }
}

void main() {
    print("Hello Saksham!\n");
}
