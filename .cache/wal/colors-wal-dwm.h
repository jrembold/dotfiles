static const char norm_fg[] = "#ddeabf";
static const char norm_bg[] = "#0A1E20";
static const char norm_border[] = "#9aa385";

static const char sel_fg[] = "#ddeabf";
static const char sel_bg[] = "#54986D";
static const char sel_border[] = "#ddeabf";

static const char urg_fg[] = "#ddeabf";
static const char urg_bg[] = "#3E8E62";
static const char urg_border[] = "#3E8E62";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
