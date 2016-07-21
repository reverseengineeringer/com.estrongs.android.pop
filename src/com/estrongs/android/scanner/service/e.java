package com.estrongs.android.scanner.service;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import com.estrongs.android.util.l;

class e
  implements ServiceConnection
{
  e(FileMonitorService paramFileMonitorService) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    l.e("FileMonitor", "bind succeffully! onServiceConnected");
    FileMonitorService.a(a, new Messenger(paramIBinder));
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    FileMonitorService.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */