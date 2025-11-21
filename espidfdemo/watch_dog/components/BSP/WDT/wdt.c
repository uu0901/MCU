#include "wdt.h"
/**
* @brief 初始化任务看门狗计时器
* @param tps: 定时器周期
*/
esp_timer_handle_t esp_tim_handle; /* 定时器回调函数句柄 */
void wdt_init(uint64_t tps)
{

    /* 定义一个定时器结构体 */
    esp_timer_create_args_t tim_periodic_arg = {
        .callback = &wdt_isr_handler, /* 设置回调函数 */
        .arg = NULL, /* 不携带参数 */
    };
    esp_timer_create(&tim_periodic_arg, &esp_tim_handle); /* 创建一个事件 */
    esp_timer_start_periodic(esp_tim_handle, tps); /* 每周期内触发一次 */
}
/**
* @brief 重新启动当前运行的计时器
* @param timeout: 定时器超时时间，该超时时间以微妙作为基本计算单位，
        故而设置超时时间为 1s，则需要转换为微妙（μs），
        即 timeout = 1s = 1000000μs
* @retval 无
*/
void restart_timer(uint64_t timeout)
{
    /* 重新启动当前运行的计时器，用以模拟喂狗过程 */
    esp_timer_restart(esp_tim_handle, timeout);
}
/**
* @brief 看门狗回调函数
* @param arg: 无参数传入
* @retval 无
*/
void IRAM_ATTR wdt_isr_handler(void *arg)
{
    esp_restart(); /* 若没有及时进行喂狗，那么芯片将一直进行复位 */
}