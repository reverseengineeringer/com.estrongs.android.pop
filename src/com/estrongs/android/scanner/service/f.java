package com.estrongs.android.scanner.service;

import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.estrongs.android.util.l;
import java.util.concurrent.atomic.AtomicInteger;

class f
  implements Runnable
{
  f(FileMonitorService paramFileMonitorService) {}
  
  public void run()
  {
    Message localMessage;
    if (FileMonitorService.b(a).get() != 0) {
      localMessage = Message.obtain(null, 160407);
    }
    try
    {
      FileMonitorService.b(a).set(0);
      if (FileMonitorService.c(a) != null) {
        FileMonitorService.c(a).send(localMessage);
      }
      l.e("FileMonitor", "send flush event due to TimeOut threshold!");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        localRemoteException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */