package com.estrongs.android.pop.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class e
  implements ServiceConnection
{
  e(j paramj) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    new f(this, paramIBinder).start();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */