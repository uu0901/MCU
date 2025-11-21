#include "common_mymenu.h"
Menu_Item head;
Menu_Item m1;
Menu_Item m2;
Menu_Item m3;
Menu_Item m4;
Menu_Item m5;
void menu_init(void)
{
    Create_Menu_Item(&head, &m1, "hello1");
    Create_Menu_Item(&head, &m1, "hello1");
    Create_Menu_Item(&head, &m2, "hello2");
    Create_Menu_Item(&head, &m3, "hello3");
    Create_Menu_Item(&head, &m4, "hello4");
    Create_Menu_Item(&head, &m5, "hello5");
}
void menu_show(void)
{

}
