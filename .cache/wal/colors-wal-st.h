const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0A1E20", /* black   */
  [1] = "#3E8E62", /* red     */
  [2] = "#54986D", /* green   */
  [3] = "#5CA175", /* yellow  */
  [4] = "#8EB777", /* blue    */
  [5] = "#77B188", /* magenta */
  [6] = "#A7CE8A", /* cyan    */
  [7] = "#ddeabf", /* white   */

  /* 8 bright colors */
  [8]  = "#9aa385",  /* black   */
  [9]  = "#3E8E62",  /* red     */
  [10] = "#54986D", /* green   */
  [11] = "#5CA175", /* yellow  */
  [12] = "#8EB777", /* blue    */
  [13] = "#77B188", /* magenta */
  [14] = "#A7CE8A", /* cyan    */
  [15] = "#ddeabf", /* white   */

  /* special colors */
  [256] = "#0A1E20", /* background */
  [257] = "#ddeabf", /* foreground */
  [258] = "#ddeabf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
