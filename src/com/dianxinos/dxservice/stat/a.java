package com.dianxinos.dxservice.stat;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.dianxinos.dxservice.a.c;

public class a
{
  private static final Long a = Long.valueOf(1800000L);
  private static a g;
  private Context b;
  private AlarmManager c;
  private PendingIntent d;
  private boolean e;
  private long f;
  
  private a(Context paramContext)
  {
    b = paramContext;
    c = ((AlarmManager)b.getSystemService("alarm"));
    paramContext = new Intent("DXCoreAlarmReceiver");
    d = PendingIntent.getBroadcast(b, 0, paramContext, 134217728);
    f = -1L;
    e = false;
  }
  
  public static a a(Context paramContext)
  {
    try
    {
      if (g == null) {
        g = new a(paramContext);
      }
      return g;
    }
    finally {}
  }
  
  private boolean c()
  {
    return System.currentTimeMillis() - f > 60000L;
  }
  
  public void a()
  {
    if (!e)
    {
      if (c.c) {
        Log.d("stat.Alarm", "Start to regist alarm!");
      }
      c.cancel(d);
      c.setRepeating(1, System.currentTimeMillis(), a.longValue(), d);
      e = true;
      f = System.currentTimeMillis();
    }
  }
  
  public void b()
  {
    if ((e) && (c()))
    {
      if (c.c) {
        Log.d("stat.Alarm", "Start to unRegist alarm, The last register time is " + f);
      }
      c.cancel(d);
      e = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */