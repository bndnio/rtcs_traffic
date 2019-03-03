#include "stm32f4xx.h"
// include custom types
#include "types.h"
#include "masks.h"

BoardState advVehicles(Vehicle incomingVehicle, BoardState boardState);
BoardState stickyAdvVehicles(Vehicle incomingVehicle, BoardState boardState);
BoardState changeLightColor(LightColor lightColor, BoardState boardState);
