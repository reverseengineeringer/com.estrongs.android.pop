package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.app.NotificationManager;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.impl.local.m;
import java.util.List;

final class k
  extends Thread
{
  k(Activity paramActivity, List paramList1, List paramList2, List paramList3) {}
  
  public void run()
  {
    int n;
    Object localObject2;
    int k;
    int j;
    int i;
    synchronized (AppRunner.b)
    {
      n = AppRunner.a.intValue();
      localObject2 = AppRunner.a;
      AppRunner.a = Integer.valueOf(AppRunner.a.intValue() + 1);
      ??? = (NotificationManager)a.getSystemService("notification");
      k = 0;
      j = 0;
      i = 0;
    }
    for (;;)
    {
      int m;
      try
      {
        if (k < b.size())
        {
          localObject2 = (String)b.get(k);
          AppRunner.a(a, a.getText(2131230980) + "...", (String)c.get(k), n, true);
          if (localObject2 == null) {
            break label642;
          }
          localObject2 = ((String)localObject2).replace(" ", "\\ ").replace("&", "\\&");
          boolean bool = m.l((String)localObject2);
          if ((d == null) || (!((Boolean)d.get(k)).booleanValue())) {
            break label639;
          }
          bool = ((Boolean)d.get(k)).booleanValue();
          localObject2 = "/data/data/" + (String)localObject2;
          if (i.a((String)localObject2)) {
            new ab(d.a(a), i.b((String)localObject2), false).execute(false);
          }
          if (bool)
          {
            m = i + 1;
            i = j;
            j = m;
            m = k + 1;
            k = j;
            j = i;
            i = k;
            k = m;
            continue;
            localObject3 = finally;
            throw ((Throwable)localObject3);
          }
          m = j + 1;
          j = i;
          i = m;
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        ((NotificationManager)???).cancel(n);
        continue;
      }
      finally
      {
        ((NotificationManager)???).cancel(n);
      }
      if (b.size() == 1)
      {
        if (i == 1)
        {
          ??? = (String)c.get(0) + " " + a.getText(2131230979);
          a.runOnUiThread(new l(this, (String)???));
          return;
        }
        ??? = (String)c.get(0) + " " + a.getText(2131230975);
        continue;
      }
      if (i > 0)
      {
        if (j == 0) {
          ??? = "" + i + " " + a.getText(2131230978);
        } else {
          ??? = "" + i + " " + a.getText(2131230978) + ", " + j + " " + a.getText(2131230977);
        }
      }
      else
      {
        ??? = "" + j + " " + a.getText(2131230977);
        continue;
        label639:
        continue;
        label642:
        m = i;
        i = j;
        j = m;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */