package com.dianxinos.dxservice.core;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import com.dianxinos.dxservice.stat.t;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class d
  implements ServiceConnection
{
  d(c paramc) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (com.dianxinos.dxservice.a.c.d) {
      Log.i("stat.DXServiceInterator", "Service is connected!");
    }
    c.a(a, new Messenger(paramIBinder));
    c.a(a, true);
    if (c.a(a)) {
      a.b();
    }
    paramComponentName = c.b(a).iterator();
    while (paramComponentName.hasNext())
    {
      paramIBinder = (t)paramComponentName.next();
      a.a(paramIBinder);
    }
    c.b(a, false);
    c.b(a).clear();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (com.dianxinos.dxservice.a.c.d) {
      Log.i("stat.DXServiceInterator", "Service is Disconnected!");
    }
    c.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.core.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */