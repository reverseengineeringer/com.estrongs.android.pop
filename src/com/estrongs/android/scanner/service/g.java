package com.estrongs.android.scanner.service;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.concurrent.atomic.AtomicInteger;

class g
  implements b
{
  private int b = 0;
  
  g(FileMonitorService paramFileMonitorService) {}
  
  private int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 4: 
    case 8: 
      return 2;
    case 128: 
    case 256: 
      return 1;
    }
    return 3;
  }
  
  private boolean a(int paramInt, String paramString)
  {
    if ((b == 0) && (paramInt != 512) && (paramInt != 64) && (paramInt != 1024))
    {
      if (new File(paramString).isDirectory()) {
        b = 1;
      }
    }
    else {
      if (b != 2) {
        break label64;
      }
    }
    label64:
    label99:
    do
    {
      do
      {
        return true;
        b = 2;
        break;
        if (b != 1) {
          break label99;
        }
      } while ((paramInt != 128) && (paramInt != 256));
      FileMonitorService.a(a).a(paramString);
      return true;
    } while ((paramInt != 64) && (paramInt != 512));
    FileMonitorService.a(a).b(paramString);
    return true;
  }
  
  public void a(int paramInt1, String paramString, int paramInt2)
  {
    if (FileMonitorService.c(a) == null) {}
    for (;;)
    {
      return;
      b = paramInt2;
      if (!a(paramInt1, paramString)) {
        continue;
      }
      Bundle localBundle = new Bundle();
      localBundle.putInt("EVENT_ID", a(paramInt1));
      localBundle.putString("PATH", paramString);
      localBundle.putInt("PATH_TYPE", b);
      paramString = Message.obtain(null, 160325);
      paramString.setData(localBundle);
      try
      {
        FileMonitorService.c(a).send(paramString);
        FileMonitorService.b(a).incrementAndGet();
        if (FileMonitorService.b(a).get() >= 50)
        {
          paramString = Message.obtain(null, 160407);
          FileMonitorService.c(a).send(paramString);
          FileMonitorService.b(a).set(0);
          l.e("FileMonitor", "send flush event due to arrive the number threshold!");
        }
        if (FileMonitorService.b(a).get() == 0) {
          continue;
        }
        FileMonitorService.e(a).removeCallbacks(FileMonitorService.d(a));
        FileMonitorService.e(a).postDelayed(FileMonitorService.d(a), 3000L);
        return;
      }
      catch (RemoteException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */