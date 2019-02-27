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
typedef enum ls {OFF, ON} LightState;
typedef struct {
	QueueState queueState;
	LightState lightState;
} TrafficState;

#endif /* TYPES_H_ */
