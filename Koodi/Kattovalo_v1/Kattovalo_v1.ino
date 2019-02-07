/*
TODO:
- crossFADE v‰rist‰ toiseen
- sammutus/p‰‰lle
- sammutuksen poisto (virrat pois, virrat p‰‰lle, valot p‰‰lle)
*/
#include <SoftwareSerial.h>
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>
#include <eeprom.h>

/*
Board 0:  Address = 0x40  Offset = binary 00000 (no jumpers required)
Board 1:  Address = 0x41  Offset = binary 00001 (bridge A0 as in the photo above)
Board 2:  Address = 0x42  Offset = binary 00010 (bridge A1)
Board 3:  Address = 0x43  Offset = binary 00011 (bridge A0 & A1)
Board 4:  Address = 0x44  Offset = binary 00100 (bridge A2)
*/

SoftwareSerial Bluetooth(10, 9); // RX, TX

Adafruit_PWMServoDriver LED_driver[3] = {
	Adafruit_PWMServoDriver(0x40), 
	Adafruit_PWMServoDriver(0x42), 
	Adafruit_PWMServoDriver(0x43) };

/*
1. Driver
2. Segment
3. R/G/B/W
*/
int LED_value[3][4][4] = {
	{
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}
};

int LED_memory_value[3][4][4] = {
	{
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}
};

long LED_pre_value[3][4][4] = {
	{
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}
};

int LED_new_value[3][4][4] = {
	{
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}
};

long LED_step_value[3][4][4] = {
	{
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}, {
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
		{0, 0, 0, 0},
	}
};

int steps_left = 0;

bool solid_color = true;
int solid_color_value[] = {4095, 4095, 4095, 4095};

bool state = true;

void setup() {
	Serial.begin(9600);
	Serial.println("START");

	/*
	for (int i = 0; i < sizeof(LED_driver); i++) {
		LED_driver[i].begin();
		LED_driver[i].setPWMFreq(1526);  // This is the maximum PWM frequency
	}
	*/

	//read_EEPROM();

}

void loop() {
	read_BT();
}

void read_BT() {
	if (Serial.available() > 0) {
		char data = Serial.read();

		Serial.println(data);

		if (data == 'S') { // Segment
			int panel = 0;
			int driver = 0;
			int segment = 0;
			int segment_color[4] = { 0, 0, 0, 0 };

			while (Serial.available() == 0) {} // wait

			data = Serial.read();

			while (data != 'R') {
				panel = panel * 10 + (int)data;
				while (Serial.available() == 0) {} // wait
				data = Serial.read();

			}
			while (data != 'G') {
				segment_color[0] = segment_color[0] * 10 + (int)data;
				while (Serial.available() == 0) {} // wait
				data = Serial.read();
			}
			while (data != 'B') {
				segment_color[1] = segment_color[1] * 10 + (int)data;
				while (Serial.available() == 0) {} // wait
				data = Serial.read();
			}
			while (data != 'W') {
				segment_color[2] = segment_color[2] * 10 + (int)data;
				while (Serial.available() == 0) {} // wait
				data = Serial.read();
			}
			while (data != '#') {
				segment_color[3] = segment_color[2] * 10 + (int)data;
				while (Serial.available() == 0) {} // wait
				data = Serial.read();
			}

			Serial.print('R');
			Serial.print(segment_color[0]);
			Serial.print('G');
			Serial.print(segment_color[1]);
			Serial.print('B');
			Serial.print(segment_color[2]);
			Serial.print('W');
			Serial.print(segment_color[3]);
			Serial.print('#');


			if (panel == 0 || panel == 1 || panel == 6 || panel == 7) {
				driver = 0;
			}
			else if (panel == 2 || panel == 3 || panel == 8 || panel == 9) {
				driver = 1;
			}
			else if (panel == 4 || panel == 5 || panel == 10 || panel == 11) {
				driver = 2;
			}

			if (panel == 0 || panel == 2 || panel == 4) {
				segment = 0;
			}
			else if (panel == 1 || panel == 3 || panel == 5) {
				segment = 1;
			}
			else if (panel == 6 || panel == 8 || panel == 10) {
				segment = 3;
			}
			else if (panel == 7 || panel == 9 || panel == 11) {
				segment = 4;
			}

			for (int color_index = 0; color_index < sizeof(LED_value[driver][segment]); color_index++) {
				LED_new_value[driver][segment][color_index] = segment_color[color_index];
			}
			calculate_steps();
		}
	
		else if (data == '%') { // ON/OFF
			while (Serial.available() == 0) {} // wait
			data = Serial.read();
			state = (bool)data;

			Serial.print(state);

			if (state = true) {
				for (int driver = 0; driver < sizeof(LED_driver); driver++) {
					for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
						for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {
							LED_new_value[driver][segment][color_index] = LED_memory_value[driver][segment][color_index];
						}
					}
				}
			}
			else {
				for (int driver = 0; driver < sizeof(LED_driver); driver++) {
					for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
						for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {
							LED_memory_value[driver][segment][color_index] = LED_new_value[driver][segment][color_index];
							LED_new_value[driver][segment][color_index] = 0;
						}
					}
				}
			}


		}
	}
}

void wait_BT_have(int num_chars = 0) {
	while (Serial.available() == 0) {} // wait
}

void set_list_values_LEDS() {
	for (int driver = 0; driver < sizeof(LED_driver); driver++) {
		for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
			for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {
				LED_driver[driver].setPWM(segment * 4 + color_index, 4096, LED_value[driver][segment][color_index]);
			}
		}
	}
}

void save_EEPROM() {
	int address = 0;
	for (int driver = 0; driver < sizeof(LED_driver); driver++) {
		for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
			for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {

				int value = LED_value[driver][segment][color_index];
				int low_byte = (value << 8) >> 8;
				int high_byte = value >> 8;

				EEPROM.update(address, (byte)low_byte);
				address += 1;
				EEPROM.update(address, (byte)high_byte);
				address += 1;
			}
		}
	}
}

void read_EEPROM() {
	int address = 0;
	for (int driver = 0; driver < sizeof(LED_driver); driver++) {
		for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
			for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {

				int low_byte = EEPROM.read(address);
				address += 1;
				int high_byte = EEPROM.read(address);
				address += 1;

				high_byte = high_byte << 8;
				int value = low_byte | high_byte;

				LED_new_value[driver][segment][color_index] = value;
			}
		}
	}
	calculate_steps();
}

void calculate_steps() {
	long biggest_step = 0;
	for (int driver = 0; driver < sizeof(LED_driver); driver++) {
		for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
			for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {

				LED_step_value[driver][segment][color_index] = 100L * (LED_new_value[driver][segment][color_index] - LED_value[driver][segment][color_index]);
				
				if (LED_step_value[driver][segment][color_index] > biggest_step) {

					biggest_step = LED_step_value[driver][segment][color_index];
				}
			}
		}
	}

	for (int driver = 0; driver < sizeof(LED_driver); driver++) {
		for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
			for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {

				LED_pre_value[driver][segment][color_index] = 100 * LED_value[driver][segment][color_index];

				LED_step_value[driver][segment][color_index] = LED_step_value[driver][segment][color_index] / biggest_step;
				
			}
		}
	}
	steps_left = biggest_step / 100;
}

void update_fade() {
	if (steps_left > 1) {
		for (int driver = 0; driver < sizeof(LED_driver); driver++) {
			for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
				for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {

					LED_pre_value[driver][segment][color_index] = LED_pre_value[driver][segment][color_index] + LED_step_value[driver][segment][color_index];

					LED_value[driver][segment][color_index] = LED_pre_value[driver][segment][color_index] / 100;

				}
			}
		}
		set_list_values_LEDS();
		steps_left -= 1;
	}
	else if (steps_left == 1) {
		for (int driver = 0; driver < sizeof(LED_driver); driver++) {
			for (int segment = 0; segment < sizeof(LED_value[0]); segment++) {
				for (int color_index = 0; color_index < sizeof(LED_value[0][0]); color_index++) {
					LED_value[driver][segment][color_index] = LED_new_value[driver][segment][color_index];
				}
			}
		}
		set_list_values_LEDS();
		steps_left -= 1;
	}
}