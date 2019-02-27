/*
 * firmware.c
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
 */
// include custom types
#include "types.h"

/* #####- writeQueue -#####
 * Write traffic LEDs
 * ## params:
 * queueState - state of traffic not in or past intersection
 */
void writeQueue(QueueState queueState) {

}

/* #####- writeIntersection -#####
 * Write next vehicle to intersection
 * ## params:
 * vehicleIncoming - next vehicle to enter intersection
 */
void writeIntersection(Vehicle vehicleIncoming) {

}

/* #####- writeLight -#####
 * Write a new value to the traffic light
 * ## params:
 * lightState - the next state for the traffic light
 */
void writeLight(LightState lightState) {

}

/* #####- readFlow -#####
 * Read in flow value from potentiometer
 */
int readFlow() {
//	Read value from FLOW_PIN
}
