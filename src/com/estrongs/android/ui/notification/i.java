package com.estrongs.android.ui.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Map;

class i
  extends BroadcastReceiver
{
  i(h paramh) {}
  
  public void onReceive(Context arg1, Intent paramIntent)
  {
    synchronized ()
    {
      f.b().remove(Long.valueOf(paramIntent.getLongExtra("task_id", -1L)));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */