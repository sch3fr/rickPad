#include QMK_KEYBOARD_H
enum{
    ROLL,
};

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
    case ROLL:
        if (record->event.pressed) {
            SEND_STRING(SS_TAP(X_LGUI) SS_DELAY(1000) "firefox" SS_DELAY(500) SS_TAP(X_ENTER) SS_DELAY(1000) "www.youtube.com/watch?v=dQw4w9WgXcQ" SS_DELAY(500) SS_TAP(X_ENTER) SS_DELAY(1500) "k");
        } else {

        }
        break;
    }
    return true;
};

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
