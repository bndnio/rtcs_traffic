/*
 * types.h
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
*/

#ifndef TYPES_H_
#define TYPES_H_

typedef bool Vehicle;
typedef Vehicle QueueState[8];
typedef enum nv {NO, YES, NA} NextVehicle;
typedef enum ls {STOP, SLOW, GO} LightState;
typedef struct {
	QueueState queueState;
	LightState lightState;
} TrafficState;

#endif  TYPES_H_

