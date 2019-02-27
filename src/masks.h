/*
 * masks.h
 *
 *  Created on: Feb 27, 2019
 *      Author: bearl
*/

#ifndef MASKS_H_
#define MASKS_H_

#define QUEUE_MASK = 0xFF0000
#define PAST_MASK  = 0x00FFE0
#define VEHICLE_MASK = QUEUE_MASK | VEHICLE_MASK
#define LIGHT_MASK = 0x000007

#endif // MASKS_H_
