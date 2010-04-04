/* gui_w32.c */
void gui_mch_set_blinking __ARGS((long wait, long on, long off));
void gui_mch_stop_blink __ARGS((void));
void gui_mch_start_blink __ARGS((void));
LRESULT WINAPI vim_WindowProc __ARGS((HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam));
void gui_mch_new_colors __ARGS((void));
void gui_mch_def_colors __ARGS((void));
int gui_mch_open __ARGS((void));
int gui_mch_get_winpos __ARGS((int *x, int *y));
void gui_mch_set_winpos __ARGS((int x, int y));
void gui_mch_set_text_area_pos __ARGS((int x, int y, int w, int h));
void gui_mch_enable_scrollbar __ARGS((scrollbar_T *sb, int flag));
void gui_mch_set_scrollbar_pos __ARGS((scrollbar_T *sb, int x, int y, int w, int h));
void gui_mch_create_scrollbar __ARGS((scrollbar_T *sb, int orient));
int gui_mch_adjust_charheight __ARGS((void));
GuiFont gui_mch_get_font __ARGS((char_u *name, int giveErrorIfMissing));
char_u *gui_mch_get_fontname __ARGS((GuiFont font, char_u *name));
void gui_mch_free_font __ARGS((GuiFont font));
guicolor_T gui_mch_get_color __ARGS((char_u *name));
int gui_mch_haskey __ARGS((char_u *name));
void gui_mch_beep __ARGS((void));
void gui_mch_invert_rectangle __ARGS((int r, int c, int nr, int nc));
void gui_mch_iconify __ARGS((void));
void gui_mch_draw_hollow_cursor __ARGS((guicolor_T color));
void gui_mch_draw_part_cursor __ARGS((int w, int h, guicolor_T color));
void gui_mch_update __ARGS((void));
int gui_mch_wait_for_chars __ARGS((int wtime));
void gui_mch_clear_block __ARGS((int row1, int col1, int row2, int col2));
void gui_mch_clear_all __ARGS((void));
void gui_mch_enable_menu __ARGS((int flag));
void gui_mch_set_menu_pos __ARGS((int x, int y, int w, int h));
void gui_mch_menu_hidden __ARGS((vimmenu_T *menu, int hidden));
void gui_mch_draw_menubar __ARGS((void));
long_u gui_mch_get_rgb __ARGS((guicolor_T pixel));
void gui_mch_activate_window __ARGS((void));
void gui_mch_show_toolbar __ARGS((int showit));
void gui_mch_show_tabline __ARGS((int showit));
int gui_mch_showing_tabline __ARGS((void));
void gui_mch_update_tabline __ARGS((void));
void gui_mch_set_curtab __ARGS((int nr));
void ex_simalt __ARGS((exarg_T *eap));
void gui_mch_find_dialog __ARGS((exarg_T *eap));
void gui_mch_replace_dialog __ARGS((exarg_T *eap));
void gui_mch_mousehide __ARGS((int hide));
void gui_mch_destroy_scrollbar __ARGS((scrollbar_T *sb));
void gui_mch_getmouse __ARGS((int *x, int *y));
void gui_mch_setmouse __ARGS((int x, int y));
void gui_mch_flash __ARGS((int msec));
void gui_mch_delete_lines __ARGS((int row, int num_lines));
void gui_mch_insert_lines __ARGS((int row, int num_lines));
void gui_mch_exit __ARGS((int rc));
int gui_mch_init_font __ARGS((char_u *font_name, int fontset));
int gui_mch_maximized __ARGS((void));
void gui_mch_newfont __ARGS((void));
void gui_mch_settitle __ARGS((char_u *title, char_u *icon));
void mch_set_mouse_shape __ARGS((int shape));
char_u *gui_mch_browsedir __ARGS((char_u *title, char_u *initdir));
char_u *gui_mch_browse __ARGS((int saving, char_u *title, char_u *dflt, char_u *ext, char_u *initdir, char_u *filter));
int get_cmd_args __ARGS((char *prog, char *cmdline, char ***argvp, char **tofree));
int gui_is_win32s __ARGS((void));
void gui_mch_set_parent __ARGS((char *title));
void gui_mch_prepare __ARGS((int *argc, char **argv));
int gui_mch_init __ARGS((void));
void gui_mch_set_shellsize __ARGS((int width, int height, int min_width, int min_height, int base_width, int base_height, int direction));
void gui_mch_set_scrollbar_thumb __ARGS((scrollbar_T *sb, long val, long size, long max));
void gui_mch_set_font __ARGS((GuiFont font));
void gui_mch_set_fg_color __ARGS((guicolor_T color));
void gui_mch_set_bg_color __ARGS((guicolor_T color));
void gui_mch_set_sp_color __ARGS((guicolor_T color));
void im_set_font __ARGS((LOGFONT *lf));
void im_set_position __ARGS((int row, int col));
void im_set_active __ARGS((int active));
int im_get_status __ARGS((void));
void gui_mch_draw_string __ARGS((int row, int col, char_u *text, int len, int flags));
void gui_mch_flush __ARGS((void));
void gui_mch_get_screen_dimensions __ARGS((int *screen_w, int *screen_h));
void gui_mch_add_menu __ARGS((vimmenu_T *menu, int pos));
void gui_mch_show_popupmenu __ARGS((vimmenu_T *menu));
void gui_make_popup __ARGS((char_u *path_name, int mouse_pos));
void gui_make_tearoff __ARGS((char_u *path_name));
void gui_mch_add_menu_item __ARGS((vimmenu_T *menu, int idx));
void gui_mch_destroy_menu __ARGS((vimmenu_T *menu));
void gui_mch_menu_grey __ARGS((vimmenu_T *menu, int grey));
int gui_mch_dialog __ARGS((int type, char_u *title, char_u *message, char_u *buttons, int dfltbutton, char_u *textfield));
void gui_mch_set_foreground __ARGS((void));
void gui_mch_drawsign __ARGS((int row, int col, int typenr));
void *gui_mch_register_sign __ARGS((char_u *signfile));
void gui_mch_destroy_sign __ARGS((void *sign));
int multiline_balloon_available __ARGS((void));
void gui_mch_disable_beval_area __ARGS((BalloonEval *beval));
void gui_mch_enable_beval_area __ARGS((BalloonEval *beval));
void gui_mch_post_balloon __ARGS((BalloonEval *beval, char_u *mesg));
BalloonEval *gui_mch_create_beval_area __ARGS((void *target, char_u *mesg, void (*mesgCB)(BalloonEval *, int), void *clientData));
void gui_mch_destroy_beval_area __ARGS((BalloonEval *beval));
void netbeans_draw_multisign_indicator __ARGS((int row));
/* vim: set ft=c : */