package com.estrongs.android.scanner.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import com.estrongs.android.scanner.al;
import com.estrongs.android.scanner.x;
import com.estrongs.android.util.l;
import java.util.concurrent.atomic.AtomicBoolean;

public class FileScannerService
  extends Service
{
  private final Messenger a = new Messenger(new j(this));
  private AtomicBoolean b = new AtomicBoolean(false);
  private AtomicBoolean c = new AtomicBoolean(false);
  private al d = new h(this);
  
  public static void a(Context paramContext)
  {
    paramContext.startService(new Intent(paramContext, FileScannerService.class));
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    Log.e("FileScannerService", "binding file scanner");
    return a.getBinder();
  }
  
  public void onCreate()
  {
    super.onCreate();
    x.a();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    l.e("FileScannerService", "onDestroy");
    c.set(false);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    l.e("FileScannerService", "扫描服务开始运行..." + Thread.currentThread().getName());
    if (!c.compareAndSet(false, true))
    {
      l.e("FileScannerService", "扫描服务已运行...");
      return 2;
    }
    new Thread(new i(this)).start();
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.FileScannerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */