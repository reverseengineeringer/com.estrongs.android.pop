package com.dianxinos.dxservice.stat;

import android.content.Intent;
import android.util.Log;
import com.dianxinos.dxservice.a.a;
import com.dianxinos.dxservice.a.c;

class i
  implements Runnable
{
  final Intent a;
  
  public i(e parame, Intent paramIntent)
  {
    a = paramIntent;
  }
  
  public void run()
  {
    int i = 0;
    if (c.c) {
      Log.d("stat.AppInfoService", "Enter in handleAppAction!\nAction received: " + a.getAction());
    }
    Object localObject = a.getDataString().substring(8);
    if ("android.intent.action.PACKAGE_ADDED".equals(a.getAction())) {
      if (e.d())
      {
        if (c.c) {
          Log.d("stat.AppInfoService", "This add broadcast is Update action!");
        }
        e.a(false);
        localObject = null;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        if (c.c) {
          Log.d("stat.AppInfoService", "[packageName:" + ((j)localObject).a() + "][actionType:" + ((j)localObject).g() + "] is to put into DB!");
        }
        boolean bool = e.a(b, (j)localObject);
        if (!a.a((j)localObject)) {
          a.b((j)localObject);
        }
        if (c.c) {
          Log.d("stat.AppInfoService", "Put to db :" + bool + " and Now used DB size is " + e.e().a() + "Byte!");
        }
      }
      return;
      localObject = a.a((String)localObject, "install");
      i = 1;
      continue;
      if ("android.intent.action.PACKAGE_REMOVED".equals(a.getAction()))
      {
        localObject = a.a((String)localObject, "uninstall");
        if (((j)localObject).b() != null)
        {
          if (c.c) {
            Log.d("stat.AppInfoService", "This remove broadcast is Update action!");
          }
          e.a(true);
        }
        else
        {
          ((j)localObject).a(System.currentTimeMillis());
          i = 1;
        }
      }
      else if ("android.intent.action.PACKAGE_REPLACED".equals(a.getAction()))
      {
        localObject = a.a((String)localObject, "change");
        e.a(false);
        i = 1;
      }
      else
      {
        i = 1;
        localObject = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */