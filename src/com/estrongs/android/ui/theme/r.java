package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class r
  implements View.OnClickListener
{
  r(ThemeActivity paramThemeActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.settings.WIFI_SETTINGS");
    paramView.setFlags(268435456);
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */