/*
TODO:
- crossFADE v‰rist‰ toiseen
- sammutus/p‰‰lle
- sammutuksen poisto (virrat pois, virrat p‰‰lle, valot p‰‰lle)

BT-luku stringeiksi

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

SoftwareSerial Bluetooth(0, 1); // RX, TX

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

int state = 0;

void setup() {
	Serial.begin(115200);
	Serial.println("START");
	Bluetooth.begin(9600);
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
	delay(10);
}

void read_BT() {
	if (Bluetooth.available() >= 1) {
		char data = Bluetooth.read();
		Serial.print(data);

		//Serial.print(data);

		if (data == 'S') { // Segment
			String message = "";
			int color = 0;
			int panel = 0;
			int driver = 0;
			int segment = 0;
			int segment_color[4] = { 0, 0, 0, 0 };

			while (Bluetooth.available() == 0) { delay(1); } // wait

			data = Bluetooth.read();
			Serial.print(data);

			while (data != 'R') {
				message = message + data;
				while (Bluetooth.available() == 0) { delay(1); } // wait
				data = Bluetooth.read();
				Serial.print(data);

			}
			panel = message.toInt();
			message = "";
			//Serial.print(panel);
			while (data != 'G') {
				message = message + data;
				while (Bluetooth.available() == 0) { delay(1); } // wait
				data = Bluetooth.read();
				Serial.print(data);

			}
			color = message.toInt();
			segment_color[0] = color;
			message = "";
			//Serial.print('R');
			//Serial.print(message);
			while (data != 'B') {
				message = message + data;
				while (Bluetooth.available() == 0) { delay(1); } // wait
				data = Bluetooth.read();
				Serial.print(data);

			}
			segment_color[1] = message.toInt();
			message = "";
			//Serial.print('G');
			//Serial.print(segment_color[1]);
			while (data != 'W') {
				message = message + data;
				while (Bluetooth.available() == 0) { delay(1); } // wait
				data = Bluetooth.read();
				Serial.print(data);

			}
			segment_color[2] = message.toInt();
			message = "";
			//Serial.print('B');
			//Serial.print(segment_color[2]);
			while (data != '#') {
				message = message + data;
				while (Bluetooth.available() == 0) { delay(1); } // wait
				data = Bluetooth.read();
				Serial.print(data);

			}
			Serial.print('\n');

			segment_color[3] = message.toInt();

			/*
			Serial.println(panel);

			for (int i = 0; i < 4; i++) {
				Serial.print(segment_color[i]);
			}
			//Serial.print('W');
			//Serial.print(segment_color[3]);
			//Serial.println('#');
			*/

			/*
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
				segment = 2;
			}
			else if (panel == 7 || panel == 9 || panel == 11) {
				segment = 3;
			}

			for (int color_index = 0; color_index < sizeof(LED_value[driver][segment]); color_index++) {
				LED_new_value[driver][segment][color_index] = segment_color[color_index];
			}
			//calculate_steps();
		}
	
		else if (data == '%') { // ON/OFF
			while (Bluetooth.available() == 0) { delay(1); } // wait
			data = Bluetooth.read();

			Serial.print(state);

			if (state = '1') {
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
			*/


		}
	}
}

int number_string_to_int( String num_string ){
	int num = 0;
	for (int i = 0; i < num_string.length(); i++) {
		num = num * 10 + number_char_to_int(num_string.charAt(i));
	}
	return num;
}

int number_char_to_int( char num_char ) {
	switch (num_char) 
	{
	case '0':
		return 0;
	case '1':
		return 1;
	case '2':
		return 2;
	case '3':
		return 3;
	case '4':
		return 4;
	case '5':
		return 5;
	case '6':
		return 6;
	case '7':
		return 7;
	case '8':
		return 8;
	case '9':
		return 9;
	default:
		break;
	}
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