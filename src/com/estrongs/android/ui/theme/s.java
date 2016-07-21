package com.estrongs.android.ui.theme;

import android.content.Context;
import android.os.Handler;
import com.estrongs.android.j.c;
import com.estrongs.android.ui.dialog.ip;

class s
  extends al
{
  s(ThemeActivity paramThemeActivity) {}
  
  public void a(Context paramContext, Handler paramHandler)
  {
    new ip(paramContext).a();
    try
    {
      c.a(a).a("theme_pro");
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */