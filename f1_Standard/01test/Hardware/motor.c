#include "stm32f10x.h"                  // Device header
#include "motor.h"

void motorABInit(void)
{
	AIN1_GPIO_CLK_ENABLE();
	AIN2_GPIO_CLK_ENABLE();
	BIN1_GPIO_CLK_ENABLE();
	BIN2_GPIO_CLK_ENABLE();
	GPIO_InitTypeDef GPIO_InitStructure;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

	GPIO_InitStructure.GPIO_Pin = AIN1_GPIO_PIN;
	GPIO_Init(AIN1_GPIO_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = AIN2_GPIO_PIN;
	GPIO_Init(AIN2_GPIO_PORT, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = BIN1_GPIO_PIN;
	GPIO_Init(BIN1_GPIO_PORT, &GPIO_InitStructure);
	
	GPIO_InitStructure.GPIO_Pin = BIN2_GPIO_PIN;
	GPIO_Init(BIN2_GPIO_PORT, &GPIO_InitStructure);

	pwmInit(36 - 1, 100 -1);
}
//1、encoderTest，测试输出轴哪个方向对应编码器递增，比如我这里是逆时针递增
//2、设置对应正值pwm，输出轴为逆时针转动，这里的AIN1AIN2就是设置电机转动方向。注意此pwn值要与编码器值方向一致，pwm为正，逆时针转动，对应编码器递增，否则后续pid无法控制
void motorA_setPwm(int8_t pwm)
{
	if (pwm >= 0)
	{
		/*顺*/
//		AIN1_SET_HEIGH();
//		AIN2_SET_LOW();
		/*顺*/	
		
		/*逆*/	
		AIN1_SET_LOW();
		AIN2_SET_HEIGH();
		/*逆*/	
		pwmaSetCompare(pwm);
	}
	else
	{
		AIN1_SET_HEIGH();
		AIN2_SET_LOW();
		pwmaSetCompare(-pwm);
	}
}
void motorB_setPwm(int8_t pwm)
{
	if (pwm >= 0)
	{
		BIN1_SET_LOW();
		BIN2_SET_HEIGH();
		pwmbSetCompare(pwm);
	}
	else
	{
		BIN1_SET_HEIGH();
		BIN2_SET_LOW();
		pwmbSetCompare(-pwm);
	}
}
