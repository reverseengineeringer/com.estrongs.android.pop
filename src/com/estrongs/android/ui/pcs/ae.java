package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import com.estrongs.fs.impl.j.b;
import java.util.Map;

class ae
  implements Runnable
{
  ae(w paramw, String paramString1, String paramString2, String paramString3) {}
  
  public void run()
  {
    Object localObject = (Map)b.a(w.l(d), a, b, c);
    if (localObject != null)
    {
      if (((Map)localObject).containsKey("result")) {}
      int i;
      for (;;)
      {
        try
        {
          i = Integer.parseInt(((Map)localObject).get("result") + "");
          if (i != 0) {
            break;
          }
          localObject = ah.a(d.e);
          localHandler2 = ah.a(d.e);
          localah = d.e;
          ((Handler)localObject).sendMessage(localHandler2.obtainMessage(1, 0, 0, null));
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
        i = -1;
      }
      if (i == 2)
      {
        localHandler1 = ah.a(d.e);
        localHandler2 = ah.a(d.e);
        localah = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 6, w.a(d).getString(2131428572)));
        return;
      }
      if (i == 3)
      {
        localHandler1 = ah.a(d.e);
        localHandler2 = ah.a(d.e);
        localah = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 1, w.a(d).getString(2131428614)));
        return;
      }
      if (i == 4)
      {
        localHandler1 = ah.a(d.e);
        localHandler2 = ah.a(d.e);
        localah = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 2, w.a(d).getString(2131428607)));
        return;
      }
      if (i == 6)
      {
        localHandler1 = ah.a(d.e);
        localHandler2 = ah.a(d.e);
        localah = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 7, w.a(d).getString(2131427897)));
        return;
      }
      if (i == 7)
      {
        localHandler1 = ah.a(d.e);
        localHandler2 = ah.a(d.e);
        localah = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 3, w.a(d).getString(2131428576)));
        return;
      }
      if (i == 500010)
      {
        localHandler1 = ah.a(d.e);
        localHandler2 = ah.a(d.e);
        localah = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 4, w.a(d).getString(2131428633)));
        return;
      }
      localHandler1 = ah.a(d.e);
      localHandler2 = ah.a(d.e);
      localah = d.e;
      localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 5, w.a(d).getString(2131428615)));
      return;
    }
    Handler localHandler1 = ah.a(d.e);
    Handler localHandler2 = ah.a(d.e);
    ah localah = d.e;
    localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 8, null));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */