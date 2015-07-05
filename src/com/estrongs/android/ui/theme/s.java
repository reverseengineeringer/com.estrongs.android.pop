package com.estrongs.android.ui.theme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.ui.a.db;

class s
  extends BroadcastReceiver
{
  private String b;
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ((paramContext.equals("android.intent.action.PACKAGE_ADDED")) || (paramContext.equals("android.intent.action.INSTALL_PACKAGE")))
    {
      paramContext = paramIntent.getDataString().substring("package:".length());
      if (b.equals(paramContext)) {
        ThemeActivity.c(a).a(b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */