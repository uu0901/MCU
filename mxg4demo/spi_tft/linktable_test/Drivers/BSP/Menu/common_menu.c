#include "common_menu.h"
void Create_Menu_Item(Menu_Item* father, Menu_Item *me, const char name[])
{
    me->name = name;//设置名字；
    me->sons = 0;   //暂时没有子菜单；
    me->No = 0;     //没有兄弟；
    me->father = father;//记录自己的父亲是谁。
    me->first_son = NULL;
    me->next_brother = NULL;
    me->last_brother = NULL;
    if(father != NULL)//如果有父菜单，就挂到它下面
    {
        if(father->sons == 0)//父菜单还没有子菜单
        {
            father->first_son = me;//那我就是它的第一个孩子：
            me->No = 1;//我是第一个
        }
        else//父菜单已经有孩子了 那我要加到兄弟链表的末尾：
        {
            Menu_Item* p = father->first_son;
            while(p->next_brother != NULL)
            {
                p = p->next_brother; // 找到最后一个兄弟
            }
            p->next_brother = me;// 把自己接在它后面
            me->last_brother = p;// 自己的前兄弟就是p
            me->No = p->No + 1; // 我的编号 = 上一个编号+1
        }
        father->sons++;//父亲的孩子数量 +1
    }
}
