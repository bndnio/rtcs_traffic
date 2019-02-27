/*
 * types.h
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
*/

#ifndef TYPES_H_
#define TYPES_H_

typedef enum bool {FALSE, TRUE} Boolean;
typedef Boolean Vehicle;
typedef Vehicle VehicleState[19];
typedef enum nxtveh {NO, YES, NA} NextVehicle;
typedef enum lts {STOP, SLOW, GO} LightState;
typedef struct {
	VehicleState vehicleState;
	LightState lightState;
} TrafficState;

#endif // TYPES_H_
