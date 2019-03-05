/*
 * helpers.c
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
 */

#include <stdint.h>

#include "masks.h"
#include "types.h"

/* #####- advVehicles -#####
 * Advance traffic queue and add incoming vehicle
 * ## params:
 * incomingVehicle - vehicle entering intersection
 * boardState - state of lights on board
 * ## returns:
 * BoardState - new state of board after advancing vehicles
 */
BoardState advVehicles(Vehicle incomingVehicle, BoardState boardState) {
	// Build bit for incoming vehicle
	uint32_t topVeh;
	if (incomingVehicle == TRUE) {
		topVeh = 0x80000000;
	} else if (incomingVehicle == FALSE) {
		topVeh = 0x00000000;
	}

	// Build new boardState

	uint32_t silly = (VEHICLE_MASK & (boardState >> 1));
	uint32_t silly2 = (LIGHT_MASK & boardState);
	uint32_t silly3 = topVeh;
	return 0x0 | silly | silly2 | silly3;
}


/* #####- stickyAdvVehicles -#####
 * Advance traffic queue without pushing traffic into intersection and add incoming vehicle
 * ## params:
 * incomingVehicle - vehicle entering intersection
 * boardState - state of lights on board
 * ## returns:
 * BoardState - new state of board after advancing vehicles
 */
BoardState stickyAdvVehicles(Vehicle incomingVehicle, BoardState boardState) {
	// Build bit for incoming vehicle
	uint32_t topVeh;
	if (incomingVehicle == TRUE) {
		topVeh = 0x80000000;
	} else if (incomingVehicle == FALSE) {
		topVeh = 0x00000000;
	}

	// Find rightmost 0 in vehicles before light
	uint32_t stopLoc = (boardState | ~QUEUE_MASK);
	stopLoc = ~stopLoc & (stopLoc+1);

	// Create mask for just those vehicles before the light with room to move ahead
	uint32_t dynMask = 0x00000000;
	for (int i =0; i <= 32-stopLoc; i++) {
		dynMask = ((dynMask >> 1) | 0x80000000);
	}

	// Build new boardState
	return 0x00000000
			| ((dynMask & boardState) >> 1)
			| (~dynMask & QUEUE_MASK & boardState)
			| (PAST_MASK & ((PAST_MASK & boardState) >> 1))
			| (LIGHT_MASK & boardState)
			| topVeh;

}


/* #####- changeLightColor -#####
 * Change traffic light color
 * ## params:
 * lightColor - color of light to change to
 * boardState - state of lights on board
 * ## returns:
 * BoardState - new state of board after changing color of light
 */
BoardState changeLightColor(LightColor lightColor, BoardState boardState) {
	uint32_t nxtLight;
	if (lightColor == GREEN) {
		nxtLight = LIGHT_GREEN;
	} else if (lightColor == YELLOW) {
		nxtLight = LIGHT_YELLOW;
	} else if (lightColor == RED) {
		nxtLight = LIGHT_RED;
	}

	return 0x00000000
			| (~LIGHT_MASK & boardState)
			| nxtLight;
}
