#include "swappy.h"

#define CONFIG_LINE_SIZE_DEFAULT 5
#define CONFIG_TEXT_FONT_DEFAULT "sans-serif"
#define CONFIG_TEXT_SIZE_DEFAULT 20

void config_load(struct swappy_state *state);
void config_free(struct swappy_state *state);