uint32_t len = 6;
int16_t data[] = {10, 20, 30, 3, 2, 4};

int main() {
    int32_t total = 0;
    for (uint32_t i = 0; i < len; i++) {
        total += data[i];
    }

    print_int(total);

    exit();
}