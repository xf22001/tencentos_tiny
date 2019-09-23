

/*================================================================
 *
 *
 *   文件名称：apps.c
 *   创 建 者：肖飞
 *   创建日期：2019年09月23日 星期一 15时02分53秒
 *   修改日期：2019年09月23日 星期一 16时30分41秒
 *   描    述：
 *
 *================================================================*/
#include "cmsis_os.h"

#include "apps.h"

#include "test_task.h"

//task1
#define TASK1_STK_SIZE		512
osThreadDef(task1, osPriorityNormal, 1, TASK1_STK_SIZE);

//task2
#define TASK2_STK_SIZE		512
osThreadDef(task2, osPriorityNormal, 1, TASK2_STK_SIZE);

void start_apps(void)
{
	osKernelInitialize(); //TOS Tiny kernel initialize

	osThreadCreate(osThread(task1), NULL);// Create task1
	osThreadCreate(osThread(task2), NULL);// Create task2

	osKernelStart();//Start TOS Tiny
}
