package com.estrongs.android.ui.theme;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.view.ColorPickerView;

class aa
  implements View.OnClickListener
{
  aa(ThemeColorActivity paramThemeColorActivity) {}
  
  public void onClick(View paramView)
  {
    int i = 0;
    if (ThemeColorActivity.b(a) == 1) {
      i = ThemeColorActivity.a(a, 2131558462);
    }
    for (;;)
    {
      ThemeColorActivity.a(a).setColor(i);
      return;
      if (ThemeColorActivity.b(a) == 2) {
        i = ThemeColorActivity.a(a, 2131558623);
      } else if (ThemeColorActivity.b(a) == 3) {
        i = ThemeColorActivity.a(a, 2131558409);
      } else if (ThemeColorActivity.b(a) == 4) {
        i = ThemeColorActivity.a(a, 2131558407);
      } else if (ThemeColorActivity.b(a) == 5) {
        i = ThemeColorActivity.a(a, 2131558411);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */