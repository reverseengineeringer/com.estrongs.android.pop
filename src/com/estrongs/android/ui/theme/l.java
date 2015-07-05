package com.estrongs.android.ui.theme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.LinearLayout;
import com.estrongs.android.util.ak;

class l
  extends BroadcastReceiver
{
  l(ThemeActivity paramThemeActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 0;
    paramContext = a;
    if ((ak.b()) || (ak.d())) {}
    for (boolean bool = true;; bool = false)
    {
      ThemeActivity.a(paramContext, bool);
      paramContext = ThemeActivity.b(a);
      if (ThemeActivity.a(a)) {
        i = 8;
      }
      paramContext.setVisibility(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */