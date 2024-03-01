# Teihai17N
# Author: alg
# Board : RP2040Zero

kbd = Keyboard.new

kbd.init_direct_pins(
  [   1,  3, 28, 27,  4,  8, 15, 26,  5, 10, 13,  6,  9, 12, 14,  7, 11 ]
)

kbd.add_layer :default, %i(
  KC_NUMLOCK KC_KP_SLASH KC_KP_ASTERISK KC_KP_MINUS
  KC_KP_7    KC_KP_8     KC_KP_9        KC_KP_PLUS
  KC_KP_4    KC_KP_5     KC_KP_6
  KC_KP_1    KC_KP_2     KC_KP_3        KC_KP_ENTER
        KC_KP_0          KC_KP_DOT
)
kbd.add_layer :layer1, %i(
  KC_NUMLOCK KC_KP_SLASH KC_KP_ASTERISK KC_KP_MINUS
  KC_KP_7    KC_KP_8     KC_KP_9        KC_KP_PLUS
  KC_KP_4    KC_KP_5     KC_KP_6
  KC_KP_1    KC_KP_2     KC_KP_3        KC_KP_ENTER
        KC_KP_0          KC_KP_DOT
)
kbd.add_layer :layer2, %i(
  KC_NUMLOCK KC_KP_SLASH KC_KP_ASTERISK KC_KP_MINUS
  KC_KP_7    KC_KP_8     KC_KP_9        KC_KP_PLUS
  KC_KP_4    KC_KP_5     KC_KP_6
  KC_KP_1    KC_KP_2     KC_KP_3        KC_KP_ENTER
        KC_KP_0          KC_KP_DOT
)
kbd.add_layer :layer3, %i(
  KC_NUMLOCK KC_KP_SLASH KC_KP_ASTERISK KC_KP_MINUS
  KC_KP_7    KC_KP_8     KC_KP_9        KC_KP_PLUS
  KC_KP_4    KC_KP_5     KC_KP_6
  KC_KP_1    KC_KP_2     KC_KP_3        KC_KP_ENTER
        KC_KP_0          KC_KP_DOT
)

rgb = RGB.new(
  0,
  1,
  0,
  true
)
rgb.effect     = :static
rgb.speed      = 22
rgb.hue        = 240
rgb.saturation = 100
rgb.value      = 0
kbd.append rgb

kbd.output_report_changed do |output|
  if output & Keyboard::LED_NUMLOCK > 0
    rgb.value      = 30
  else
    rgb.value      = 0
  end
end

kbd.start!
