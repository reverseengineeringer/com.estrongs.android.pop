package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.fk;
import com.estrongs.android.util.bd;
import com.estrongs.fs.impl.j.b;
import java.util.Map;

class u
  implements Runnable
{
  u(t paramt, boolean paramBoolean) {}
  
  public void run()
  {
    Message localMessage2;
    synchronized ()
    {
      localMessage2 = new Message();
      what = 2;
      if ((a) && ((ad.a(t.a(b)).c()) || (ad.a(t.a(b)).e())))
      {
        obj = t.a(b).getString(2131428616);
        if (t.b(b) != null) {
          t.b(b).sendMessage(localMessage2);
        }
        return;
      }
      if (fk.a((Activity)t.a(b)) != 3)
      {
        obj = t.a(b).getString(2131427766);
        if (t.b(b) != null) {
          t.b(b).sendMessage(localMessage2);
        }
        return;
      }
    }
    String str = com.estrongs.android.pop.view.a.d(t.a(b));
    if (str == null)
    {
      obj = t.a(b).getString(2131428601);
      if (t.b(b) != null) {
        t.b(b).sendMessage(localMessage2);
      }
      return;
    }
    long l;
    label508:
    label640:
    label876:
    Message localMessage1;
    if (a)
    {
      Object localObject2 = ad.a(t.a(b)).a();
      Object localObject5;
      if (localObject2 != null)
      {
        localObject5 = (Map)b.a(str, (String)localObject2, "pcs");
        if (localObject5 != null)
        {
          if (((Map)localObject5).get("error_msg") == null)
          {
            localObject2 = ((Map)localObject5).get("bduss") + "\n" + (String)localObject2 + "\n" + ((Map)localObject5).get("uid") + "\n" + "临时用户";
            obj = new String[] { aj.a(t.a(b), "quikreg:" + bd.c((String)localObject2)), "" + ((Map)localObject5).get("bduss") };
            what = 1;
            if (t.b(b) != null) {
              t.b(b).sendMessage(localMessage2);
            }
            return;
          }
          bool = ((Map)localObject5).containsKey("error_code");
          if (!bool) {
            break label1215;
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
            obj = t.a(b).getString(2131428602);
            if (t.b(b) != null) {
              t.b(b).sendMessage((Message)localObject2);
            }
            localObject2 = (Map)b.b(str, "pcs");
            if (localObject2 == null) {
              break label1180;
            }
            if (((Map)localObject2).get("force_reg_token") == null) {
              break label1206;
            }
            localObject2 = (Map)b.b(str, (String)((Map)localObject2).get("force_reg_token"), "pcs");
            if (localObject2 == null) {
              break label1154;
            }
            localObject5 = (String)((Map)localObject2).get("device_token");
            if (localObject5 == null) {
              break label1031;
            }
            if (((Map)localObject2).get("error_msg") == null)
            {
              str = null;
              if (a)
              {
                str = ((Map)localObject2).get("bduss") + "\n" + (String)localObject5 + "\n" + ((Map)localObject2).get("uid") + "\n" + "临时用户";
                str = aj.a(t.a(b), "quikreg:" + bd.c(str));
              }
              obj = new String[] { str, "" + ((Map)localObject2).get("bduss") };
              what = 1;
              if (a) {
                ad.a(t.a(b)).a((String)localObject5, System.currentTimeMillis());
              }
              localObject2 = com.estrongs.android.util.a.a();
              if (localObject2 != null) {
                ((com.estrongs.android.util.a)localObject2).c("Direct_Register", "Direct_Register");
              }
            }
            if (t.b(b) != null) {
              t.b(b).sendMessage(localMessage2);
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
        obj = t.a(b).getString(2131428604);
        if (t.b(b) != null) {
          t.b(b).sendMessage(localMessage1);
        }
        return;
      }
      localMessage1 = new Message();
      what = 2;
      obj = t.a(b).getString(2131428580);
      if (t.b(b) != null) {
        t.b(b).sendMessage(localMessage1);
      }
      return;
      label1031:
      boolean bool = localMessage1.containsKey("error_code");
      if (!bool) {
        break label1222;
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
          obj = t.a(b).getString(2131428603);
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        break label1222;
      }
      what = 2;
      obj = t.a(b).getString(2131428604);
      break label876;
      label1154:
      what = 2;
      obj = t.a(b).getString(2131428580);
      break label876;
      label1180:
      what = 2;
      obj = t.a(b).getString(2131428580);
      break label876;
      label1206:
      break label640;
      Object localObject3 = null;
      break;
      label1215:
      l = -1L;
      break label508;
      label1222:
      l = -1L;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */