package com.estrongs.android.pop.app.analysis;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.util.l;

public class AnalysisNotificationDeletedReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra(p.b);
    l.a("Notification canceled!");
    p.a().a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.AnalysisNotificationDeletedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */