package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.app.NotificationManager;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.b.f;
import com.estrongs.fs.impl.local.l;
import java.util.List;

final class i
  extends Thread
{
  i(List paramList1, Activity paramActivity, List paramList2, NotificationManager paramNotificationManager) {}
  
  public void run()
  {
    int n;
    Object localObject3;
    int k;
    int j;
    int i;
    synchronized (AppRunner.b)
    {
      n = AppRunner.a.intValue();
      localObject3 = AppRunner.a;
      AppRunner.a = Integer.valueOf(AppRunner.a.intValue() + 1);
      k = 0;
      j = 0;
      i = 0;
    }
    for (;;)
    {
      int m;
      try
      {
        if (k < a.size())
        {
          ??? = am.d((String)a.get(k));
          AppRunner.a(b, b.getText(2131427698) + "...", (String)???, n, true);
          ??? = (String)a.get(k);
          if (??? == null) {
            break label611;
          }
          ??? = ((String)???).replace(" ", "\\ ").replace("&", "\\&").replace("(", "\\(").replace(")", "\\)");
          boolean bool;
          if (c != null)
          {
            localObject3 = (f)c.get(k);
            if (((f)localObject3).b())
            {
              bool = AppRunner.b(b, (String)???, (f)localObject3);
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
                localObject4 = finally;
                throw ((Throwable)localObject4);
              }
            }
            else
            {
              bool = l.b((String)???, true);
              continue;
            }
          }
          else
          {
            bool = l.b((String)???, true);
            continue;
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
        d.cancel(n);
        continue;
      }
      finally
      {
        d.cancel(n);
      }
      String str;
      if (a.size() == 1)
      {
        if (i == 1)
        {
          ??? = am.d((String)a.get(0)) + " " + b.getText(2131427699);
          ag.a(b, (CharSequence)???, 1);
          return;
        }
        str = am.d((String)a.get(0)) + " " + b.getText(2131427700);
        continue;
      }
      if (i > 0)
      {
        if (j == 0) {
          str = "" + i + " " + b.getText(2131427702);
        } else {
          str = "" + i + " " + b.getText(2131427702) + ", " + j + " " + b.getText(2131427703);
        }
      }
      else
      {
        str = "" + j + " " + b.getText(2131427703);
        continue;
        label611:
        m = i;
        i = j;
        j = m;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.utils.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */