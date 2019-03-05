/*
 * firmware.c
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
 */

// stm types
#include "stm32f4xx.h"
// include custom types
#include "types.h"

/* #####- writeBoard -#####
 * Write vehicles and traffic light LEDs based on state
 * ## params:
 * boardState - state of LEDs on board
 */
void writeBoard(BoardState boardState) {
	for(int i = 0; i<32;i++){
		uint32_t nextBit = 0x1 & (boardState >> i);
		GPIO_Write(GPIOB, nextBit);

		GPIO_ToggleBits(GPIOB, GPIO_Pin_1);
	}
}

/* #####- readFlow -#####
 * Read in flow value from potentiometer
 */
uint16_t Get_ADC_Converted_Value()
{
  ADC_SoftwareStartConv(ADC1);
  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC))
  {
    return ADC_GetConversionValue(ADC1);
  }
  return 0;
}

uint16_t readFlow() {
//	Read value from FLOW_PIN
	uint16_t ConvertedValue = Get_ADC_Converted_Value();
	return ConvertedValue;
}
