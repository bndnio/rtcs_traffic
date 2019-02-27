/*
 * helpers.c
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
 */

/* #####- advVehicles -#####
 * Advance traffic queue and add incoming vehicle
 * ## params:
 * incomingVehicle - vehicle entering intersection
 * boardState - state of lights on board
 * ## returns:
 * BoardState - new state of board after advancing vehicles
 */
BoardState advVehicles(Vehicle incomingVehicle, BoardState boardState) {

	uint32_t topVeh;
	if (incomingVehicle == YES) {
		topVeh = 0x80000000;
	} else if (incomingVehicle == No) {
		topVeh = 0x00000000;
	} else {
		topVeh = 0x00000000;
		// TODO: log error
	}

	return 0x00000000
			| (VEHICLE_MASK & (boardState >> 1))
			| incomingVehicle
			| (LIGHT_MASK & boardState)
			| topVeh;
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
	// TODO: make this a sticky advance
	return advVehicles(incomingVehicle, boardState);
}


/* #####- changeLightColor -#####
 * Change traffic light color
 * ## params:
 * lightColor - color of light to change to
 * boardState - state of lights on board
 * ## returns:
 * BoardState - new state of board after changing color of light
 */
BoardState stickyAdvVehicles(LightColor lightColor, BoardState boardState) {

	uint32_t nxtLight;
	if (lightColor == GREEN) {
		nxtLight = LIGHT_GREEN;
	} else if (lightColor == YELLOW) {
		nxtLight = LIGHT_YELLOW;
	} else if (lightColor == RED) {
		nxtLight = LIGHT_RED;
	}

	return 0x00000000
			| (!LIGHT_MASK & boardState)
			| nxtLight;
}
