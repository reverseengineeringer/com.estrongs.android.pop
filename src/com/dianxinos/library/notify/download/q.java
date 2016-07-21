package com.dianxinos.library.notify.download;

import android.app.NotificationManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

class q
  implements s
{
  private Context a;
  private NotificationManager b;
  
  public q(Context paramContext)
  {
    a = paramContext;
    b = ((NotificationManager)a.getSystemService("notification"));
  }
  
  public void a(Thread paramThread)
  {
    paramThread.start();
  }
  
  public boolean a()
  {
    Object localObject = (ConnectivityManager)a.getSystemService("connectivity");
    if (localObject == null) {
      return false;
    }
    localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
    int i;
    if ((localObject != null) && (((NetworkInfo)localObject).getType() == 0))
    {
      i = 1;
      if ((i == 0) || (!((NetworkInfo)localObject).isRoaming())) {
        break label57;
      }
    }
    label57:
    for (boolean bool = true;; bool = false)
    {
      return bool;
      i = 0;
      break;
    }
  }
  
  public Long b()
  {
    return Long.valueOf(Long.MAX_VALUE);
  }
  
  public Long c()
  {
    return Long.valueOf(Long.MAX_VALUE);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.download.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */