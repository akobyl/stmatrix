
#include "stm32g474xx.h"
#include "stm32g4xx_ll_gpio.h"
#include "FreeRTOS.h"

int main(void) {
    LL_GPIO_InitTypeDef gpio_init;

    LL_GPIO_Init(GPIOA, &gpio_init);
    return 0;


}

void SPI2_IRQHandler(void) {

}