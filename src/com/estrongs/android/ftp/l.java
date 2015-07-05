package com.estrongs.android.ftp;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

class l
  implements ServiceConnection
{
  l(k paramk) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    k.a(a, ((g)paramIBinder).a());
    if (k.a(a) == null) {
      return;
    }
    a.b = true;
    if (k.b(a) != null) {
      k.b(a).a();
    }
    k.a(a, null);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    k.a(a, null);
    a.b = false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */