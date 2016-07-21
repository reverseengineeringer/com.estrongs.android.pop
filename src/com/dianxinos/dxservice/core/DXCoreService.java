package com.dianxinos.dxservice.core;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.stat.a;
import com.dianxinos.dxservice.stat.an;
import com.dianxinos.dxservice.stat.k;
import com.dianxinos.dxservice.stat.x;

public class DXCoreService
  extends Service
{
  final Messenger a = new Messenger(new b(this, com.dianxinos.dxservice.a.e.a()));
  private Context b;
  private com.dianxinos.dxservice.stat.e c;
  private x d;
  private an e;
  private k f;
  
  public IBinder onBind(Intent paramIntent)
  {
    if (c.d) {
      Log.i("stat.DXCoreService", "DXCoreSevice onBind");
    }
    c.a();
    d.a();
    f.a();
    if (c.a(getApplicationContext())) {
      a.a(getApplicationContext()).a();
    }
    return a.getBinder();
  }
  
  public void onCreate()
  {
    if (c.d) {
      Log.i("stat.DXCoreService", "DXCoreSevice onCreate");
    }
    b = getApplicationContext();
    c = new com.dianxinos.dxservice.stat.e(b);
    d = new x(b);
    f = new k(b);
    e = new an(b);
  }
  
  public void onDestroy()
  {
    if (c.d) {
      Log.i("stat.DXCoreService", "DXCoreSevice onDestroy");
    }
    d.b();
    c.b();
    f.b();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.core.DXCoreService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */