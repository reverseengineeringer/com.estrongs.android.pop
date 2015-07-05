package com.estrongs.android.pop.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.estrongs.android.pop.a.a.c;

final class d
  implements ServiceConnection
{
  d(String paramString1, String paramString2) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = new c(paramIBinder);
    try
    {
      paramComponentName.c(a, b);
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
 * Qualified Name:     com.estrongs.android.pop.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */