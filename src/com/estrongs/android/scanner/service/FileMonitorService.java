package com.estrongs.android.scanner.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Messenger;
import com.estrongs.android.scanner.x;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class FileMonitorService
  extends Service
{
  private a a;
  private Handler b;
  private Messenger c;
  private AtomicInteger d;
  private boolean e = false;
  private ServiceConnection f = new e(this);
  private final Runnable g = new f(this);
  private b h = new g(this);
  
  public static void a(Context paramContext)
  {
    paramContext.startService(new Intent(paramContext, FileMonitorService.class));
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    l.e("FileMonitor", "onCreate");
    e = false;
    d = new AtomicInteger(0);
    b = new Handler();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    e = false;
    a.b();
    unbindService(f);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (c == null) {
      bindService(new Intent(this, FileScannerService.class), f, 1);
    }
    if (e) {}
    do
    {
      return 1;
      l.e("FileMonitor", "monitor service starting");
      e = true;
    } while (a != null);
    Object localObject = x.a();
    paramIntent = new String[((List)localObject).size()];
    localObject = ((List)localObject).iterator();
    paramInt1 = 0;
    while (((Iterator)localObject).hasNext())
    {
      paramIntent[paramInt1] = ((String)((Iterator)localObject).next());
      paramInt1 += 1;
    }
    a = new a(h);
    paramIntent = new Thread(new d(this, paramIntent));
    paramIntent.setPriority(10);
    paramIntent.start();
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.FileMonitorService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */