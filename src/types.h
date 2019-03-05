/*
 * types.h
 *
 *  Created on: Feb 26, 2019
 *      Author: bearl
*/

#include <stdint.h>

#ifndef TYPES_H_
#define TYPES_H_

typedef enum bool {FALSE, TRUE} Boolean;
typedef uint32_t BoardState;				// 22b board state
typedef Boolean Vehicle;
typedef enum tfclt {RED, YELLOW, GREEN} LightColor;

#endif // TYPES_H_
