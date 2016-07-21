package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.pop.view.el;
import com.estrongs.android.util.bk;
import com.estrongs.fs.impl.o.b;
import java.util.Map;

class x
  implements Runnable
{
  x(w paramw, boolean paramBoolean) {}
  
  public void run()
  {
    Message localMessage2;
    synchronized ()
    {
      localMessage2 = new Message();
      what = 2;
      if ((a) && ((ad.a(w.a(b)).d()) || (ad.a(w.a(b)).f())))
      {
        obj = w.a(b).getString(2131231937);
        if (w.b(b) != null) {
          w.b(b).sendMessage(localMessage2);
        }
        return;
      }
      if (el.a((Activity)w.a(b)) != 3)
      {
        obj = w.a(b).getString(2131231901);
        if (w.b(b) != null) {
          w.b(b).sendMessage(localMessage2);
        }
        return;
      }
    }
    String str = a.d(w.a(b));
    if (str == null)
    {
      obj = w.a(b).getString(2131231920);
      if (w.b(b) != null) {
        w.b(b).sendMessage(localMessage2);
      }
      return;
    }
    long l;
    label508:
    label640:
    label870:
    Message localMessage1;
    if (a)
    {
      Object localObject2 = ad.a(w.a(b)).b();
      Object localObject5;
      if (localObject2 != null)
      {
        localObject5 = (Map)b.a(str, (String)localObject2, "pcs");
        if (localObject5 != null)
        {
          if (((Map)localObject5).get("error_msg") == null)
          {
            localObject2 = ((Map)localObject5).get("bduss") + "\n" + (String)localObject2 + "\n" + ((Map)localObject5).get("uid") + "\n" + "临时用户";
            obj = new String[] { am.a(w.a(b), "quikreg:" + bk.c((String)localObject2)), "" + ((Map)localObject5).get("bduss") };
            what = 1;
            if (w.b(b) != null) {
              w.b(b).sendMessage(localMessage2);
            }
            return;
          }
          bool = ((Map)localObject5).containsKey("error_code");
          if (!bool) {
            break label1209;
          }
        }
      }
      else
      {
        try
        {
          l = Long.parseLong("" + ((Map)localObject5).get("error_code"));
          if ((l == 102L) || (l == 101L) || (l == 104L))
          {
            localObject2 = new Message();
            what = 3;
            obj = w.a(b).getString(2131231921);
            if (w.b(b) != null) {
              w.b(b).sendMessage((Message)localObject2);
            }
            localObject2 = (Map)b.b(str, "pcs");
            if (localObject2 == null) {
              break label1174;
            }
            if (((Map)localObject2).get("force_reg_token") == null) {
              break label1200;
            }
            localObject2 = (Map)b.b(str, (String)((Map)localObject2).get("force_reg_token"), "pcs");
            if (localObject2 == null) {
              break label1148;
            }
            localObject5 = (String)((Map)localObject2).get("device_token");
            if (localObject5 == null) {
              break label1025;
            }
            if (((Map)localObject2).get("error_msg") == null)
            {
              str = null;
              if (a)
              {
                str = ((Map)localObject2).get("bduss") + "\n" + (String)localObject5 + "\n" + ((Map)localObject2).get("uid") + "\n" + "临时用户";
                str = am.a(w.a(b), "quikreg:" + bk.c(str));
              }
              obj = new String[] { str, "" + ((Map)localObject2).get("bduss") };
              what = 1;
              if (a) {
                ad.a(w.a(b)).a((String)localObject5, System.currentTimeMillis());
              }
              if (c.a(w.a(b)) == null) {}
            }
            if (w.b(b) != null) {
              w.b(b).sendMessage(localMessage2);
            }
            return;
          }
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
        localMessage1 = new Message();
        what = 2;
        obj = w.a(b).getString(2131231923);
        if (w.b(b) != null) {
          w.b(b).sendMessage(localMessage1);
        }
        return;
      }
      localMessage1 = new Message();
      what = 2;
      obj = w.a(b).getString(2131231819);
      if (w.b(b) != null) {
        w.b(b).sendMessage(localMessage1);
      }
      return;
      label1025:
      boolean bool = localMessage1.containsKey("error_code");
      if (!bool) {
        break label1216;
      }
    }
    for (;;)
    {
      try
      {
        l = Long.parseLong("" + localMessage1.get("error_code"));
        if ((l == 2L) || (l == 3L))
        {
          what = 2;
          obj = w.a(b).getString(2131231922);
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        break label1216;
      }
      what = 2;
      obj = w.a(b).getString(2131231923);
      break label870;
      label1148:
      what = 2;
      obj = w.a(b).getString(2131231819);
      break label870;
      label1174:
      what = 2;
      obj = w.a(b).getString(2131231819);
      break label870;
      label1200:
      break label640;
      Object localObject3 = null;
      break;
      label1209:
      l = -1L;
      break label508;
      label1216:
      l = -1L;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */