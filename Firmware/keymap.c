#include QMK_KEYBOARD_H
enum{
    ROLL, //name of the macro
};


// macro function
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    case ROLL: 
        if (record->event.pressed) {
            //replace following command with your makro
            SEND_STRING(SS_TAP(X_LGUI) SS_DELAY(1000) "firefox" SS_DELAY(500) SS_TAP(X_ENTER) SS_DELAY(1000) "www.youtube.com/watch?v=dQw4w9WgXcQ" SS_DELAY(500) SS_TAP(X_ENTER) SS_DELAY(1500) "k");
            //this macro activates left Meta key, waits 1s, types "firefox", waits 0.5s, activates enter, waits 1s, types Rickroll url, waits 0.5s, presses enter, waits 1.5s and finally presses "k"
        } else {

        }
        break;
    }
    return true;
};

// the keymap itself
const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    /*
     * ┌───┐
     * │rol│
     * └───┘
     */
    [0] = LAYOUT_ortho_1x1(
        ROLL
    )
};
