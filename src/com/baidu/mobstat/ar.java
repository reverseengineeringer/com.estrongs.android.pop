package com.baidu.mobstat;

import android.content.Context;
import android.content.Intent;
import com.baidu.bottom.service.BottomReceiver;

public class ar
  extends Thread
{
  public ar(BottomReceiver paramBottomReceiver, Context paramContext, Intent paramIntent, ct paramct) {}
  
  public void run()
  {
    try
    {
      BottomReceiver.a(d, a, b);
      BottomReceiver.b(d, a, b);
      long l = System.currentTimeMillis();
      if (l - BottomReceiver.a() < 30000L)
      {
        bb.a("No need to handle receiver due to time strategy");
        return;
      }
      BottomReceiver.a(l);
      an.b.a(a);
      return;
    }
    finally
    {
      c.b();
      BottomReceiver.a(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */