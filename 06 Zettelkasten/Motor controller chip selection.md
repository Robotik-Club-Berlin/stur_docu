---
Topic:
  - "[[motor]]"
  - "[[motor controller]]"
related:
contributor:
  - Tobias Reich
date: 2026-05-03 12:08
tags:
  - electronics
---
# Motor controller chip selection

## Requirements:
- Communication
	- CAN FD
	- USB Type-C
- Motor control 
	- High Resolution Timer (precise PWM, Dead-Time Control)
	- CORDIC (Fast sin/cos calculations)
	- FMAC (Math accelerator for IIR/FIR Filter)
	- At least 3 OPAMP (Current sensing)
	- At least 3 ADC (Current sensing)
- Periphery
	- 1x SPI (MA732 encoder)
	- ABZ (2x Encoder timer GPIO, GPIO for Z)
	- 1x ADC (NTC 100K Thermistor)

## Chipset
### [STM32G474RCT6](stm32g474cb.pdf)
The STM32G474 offers everything we need:
- 256KB Flash
- 128KB RAM
- 5x 12-bit ADC
- 6x Operational amplifiers
- 3x 16-bit Motor control timers
- Incremental encoder timer
- 3x FDCAN
- 4x SPI
- USB Type-C
- and much more...

[TCAN1042](tcan1042hv.pdf)
For CAN communication we also need a CAN transceiver. The TCAN1042 supports up to 5Mbps which is plenty for us. (Up to 7 Motors per Bus, 24 Byte per Motor (12 Byte Host -> Motor and 12 Byte Motor -> Host) => 1.34 Mbit/s @ 1KHz)


