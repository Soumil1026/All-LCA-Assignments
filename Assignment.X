#include <stdio.h>
#include <time.h>

int main()
{
    int year, month, day;
    int days[12] = {
        31, 28, 31, 30, 31, 30,
        31, 31, 30, 31, 30, 31
    };

    char *months[] = {
        "January", "February", "March",
        "April", "May", "June",
        "July", "August", "September",
        "October", "November", "December"
    };

    char *weekdays[] = {
        "Sun", "Mon", "Tue", "Wed",
        "Thu", "Fri", "Sat"
    };

    struct tm date = {0};
    time_t timestamp;
    int first_day;

    printf("Enter year: ");
    scanf("%d", &year);

    if (year < 1 || year > 9999)
    {
        printf("Invalid year!\n");
        return 1;
    }


    if ((year % 400 == 0) ||
        (year % 4 == 0 && year % 100 != 0))
    {
        days[1] = 29;
    }
