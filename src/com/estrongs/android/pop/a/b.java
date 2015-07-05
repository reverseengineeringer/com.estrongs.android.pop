package com.estrongs.android.pop.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.estrongs.android.pop.a.a.c;

final class b
  implements ServiceConnection
{
  b(String paramString1, String paramString2, i parami) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = null;
    paramIBinder = new c(paramIBinder);
    try
    {
      paramIBinder = paramIBinder.a(a, b);
      paramComponentName = paramIBinder;
    }
    catch (RemoteException paramIBinder)
    {
      for (;;)
      {
        paramIBinder.printStackTrace();
      }
    }
    c.a(paramComponentName);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */