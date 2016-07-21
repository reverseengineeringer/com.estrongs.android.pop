package com.dianxinos.dxservice.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

public class k
{
  private Context a;
  private IntentFilter b = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
  private BroadcastReceiver c = new l(this);
  
  public k(Context paramContext)
  {
    a = paramContext;
  }
  
  public void a()
  {
    a.registerReceiver(c, b);
  }
  
  public void b()
  {
    a.unregisterReceiver(c);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */