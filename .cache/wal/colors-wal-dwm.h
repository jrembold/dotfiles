static const char norm_fg[] = "#dceabf";
static const char norm_bg[] = "#0D1D23";
static const char norm_border[] = "#9aa385";

static const char sel_fg[] = "#dceabf";
static const char sel_bg[] = "#54986D";
static const char sel_border[] = "#dceabf";

static const char urg_fg[] = "#dceabf";
static const char urg_bg[] = "#3F8C61";
static const char urg_border[] = "#3F8C61";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
