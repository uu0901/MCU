#ifndef _COMMON_MENU_H_
#define _COMMON_MENU_H_

#include "stdio.h"
#include "stdint.h"

typedef struct Menu_Item {
    const char* name;               // 菜单名字（比如“设置”、“亮度”）
    uint8_t sons;                   // 子菜单数量
    uint8_t No;                     // 在兄弟里的编号，比如第1个、第2个
    struct Menu_Item* father;       // 指向父菜单
    struct Menu_Item* first_son;    // 指向第一个子菜单
    struct Menu_Item* next_brother; // 指向下一个兄弟菜单
    struct Menu_Item* last_brother; // 指向上一个兄弟菜单
} Menu_Item;

/*
    记录“自己是谁”；

    知道“自己的父亲是谁”；

    知道“自己的第一个孩子是谁”；

    知道“自己旁边的下一个兄弟是谁”；

    可能还需要知道“上一个兄弟是谁”。
*/
void Create_Menu_Item(Menu_Item* father, Menu_Item *me, const char name[]);
#endif // _COMMON_MENU_H_

