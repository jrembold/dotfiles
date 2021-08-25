const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0D1D23", /* black   */
  [1] = "#3F8C61", /* red     */
  [2] = "#54986D", /* green   */
  [3] = "#5CA174", /* yellow  */
  [4] = "#90BA7A", /* blue    */
  [5] = "#77B188", /* magenta */
  [6] = "#A7CD87", /* cyan    */
  [7] = "#dceabf", /* white   */

  /* 8 bright colors */
  [8]  = "#9aa385",  /* black   */
  [9]  = "#3F8C61",  /* red     */
  [10] = "#54986D", /* green   */
  [11] = "#5CA174", /* yellow  */
  [12] = "#90BA7A", /* blue    */
  [13] = "#77B188", /* magenta */
  [14] = "#A7CD87", /* cyan    */
  [15] = "#dceabf", /* white   */

  /* special colors */
  [256] = "#0D1D23", /* background */
  [257] = "#dceabf", /* foreground */
  [258] = "#dceabf",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
