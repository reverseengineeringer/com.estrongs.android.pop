package com.estrongs.android.l;

import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Message;

class o
  extends Handler
{
  private int b = 0;
  
  private o(k paramk) {}
  
  void a()
  {
    if (!hasMessages(0)) {
      sendEmptyMessage(0);
    }
  }
  
  void b()
  {
    b = 0;
    removeMessages(0);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (k.a(a).startScan()) {
      b = 0;
    }
    int i;
    do
    {
      sendEmptyMessageDelayed(0, 6000L);
      return;
      i = b + 1;
      b = i;
    } while (i < 3);
    b = 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.l.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */