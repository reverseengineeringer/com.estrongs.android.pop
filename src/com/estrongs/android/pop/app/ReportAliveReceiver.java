package com.estrongs.android.pop.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.c.c.a;
import com.estrongs.android.j.c;

public class ReportAliveReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      c.a(paramContext).c();
      a.a(paramContext);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ReportAliveReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */