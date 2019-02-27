/*
 * types.h
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
*/

#ifndef TYPES_H_
#define TYPES_H_

typedef enum bool {FALSE, TRUE} Boolean;
typedef uint32_t BoardState;
typedef enum nxtveh {YES, NO, UNDEFINED} NextVehicle;
typedef enum tfclt {RED, YELLOW, GREEN} LightColor;
typedef struct {
	BoardState boardState;
	NextVehicle nextVehicle;
} TrafficState;

#endif // TYPES_H_
