package com.estrongs.android.ui.notification;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;

public class ESTaskService
  extends Service
{
  private b a = new b(this);
  private boolean b = false;
  private ChromeCastPlayerNotificationHelper.ChromeCastEventReceiver c = null;
  
  private void a()
  {
    try
    {
      if (b) {
        return;
      }
      c = new ChromeCastPlayerNotificationHelper.ChromeCastEventReceiver();
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.estrongs.action.chromecast.control.close");
      localIntentFilter.addAction("com.estrongs.action.chromecast.control.disconnect");
      localIntentFilter.addAction("com.estrongs.action.chromecast.control.next");
      localIntentFilter.addAction("com.estrongs.action.chromecast.control.play");
      localIntentFilter.addAction("com.estrongs.action.chromecast.control.preview");
      registerReceiver(c, localIntentFilter);
      b = true;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    a();
    return a;
  }
  
  public void onDestroy()
  {
    try
    {
      super.onDestroy();
      if (c != null) {
        unregisterReceiver(c);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.notification.ESTaskService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */