/*
 * masks.h
 *
 *  Created on: Feb 27, 2019
 *      Author: bearl
*/

#ifndef MASKS_H_
#define MASKS_H_

// State is 22b represented by a u_int32_t

#define QUEUE_MASK   0b11111111000000000000000000000000	// Vehicles behind stop line
#define PAST_MASK    0b00000000111111111110000000000000	// Vehicles past stop line
#define LIGHT_MASK   0b00000000000000000001110000000000	// Lights (Green, Yellow, Red)
#define VEHICLE_MASK (QUEUE_MASK | PAST_MASK)			// All vehicles

#define LIGHT_GREEN  0b00000000000000000001000000000000	// Green light
#define LIGHT_YELLOW 0b00000000000000000000100000000000	// Yellow light
#define LIGHT_RED    0b00000000000000000000010000000000	// Red light


#endif // MASKS_H_
