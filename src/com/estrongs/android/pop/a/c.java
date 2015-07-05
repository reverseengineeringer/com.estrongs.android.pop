package com.estrongs.android.pop.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;

final class c
  implements ServiceConnection
{
  c(String paramString1, String paramString2) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = new com.estrongs.android.pop.a.a.c(paramIBinder);
    try
    {
      paramComponentName.b(a, b);
      return;
    }
    catch (RemoteException paramComponentName)
    {
      paramComponentName.printStackTrace();
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */