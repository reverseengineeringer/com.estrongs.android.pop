package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import com.estrongs.fs.impl.o.b;
import java.util.Map;

class ah
  implements Runnable
{
  ah(z paramz, String paramString1, String paramString2, String paramString3) {}
  
  public void run()
  {
    Object localObject = (Map)b.a(z.l(d), a, b, c);
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
          localObject = ak.a(d.e);
          localHandler2 = ak.a(d.e);
          localak = d.e;
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
        localHandler1 = ak.a(d.e);
        localHandler2 = ak.a(d.e);
        localak = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 6, z.a(d).getString(2131232540)));
        return;
      }
      if (i == 3)
      {
        localHandler1 = ak.a(d.e);
        localHandler2 = ak.a(d.e);
        localak = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 1, z.a(d).getString(2131231939)));
        return;
      }
      if (i == 4)
      {
        localHandler1 = ak.a(d.e);
        localHandler2 = ak.a(d.e);
        localak = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 2, z.a(d).getString(2131231963)));
        return;
      }
      if (i == 6)
      {
        localHandler1 = ak.a(d.e);
        localHandler2 = ak.a(d.e);
        localak = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 7, z.a(d).getString(2131231784)));
        return;
      }
      if (i == 7)
      {
        localHandler1 = ak.a(d.e);
        localHandler2 = ak.a(d.e);
        localak = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 3, z.a(d).getString(2131231997)));
        return;
      }
      if (i == 500010)
      {
        localHandler1 = ak.a(d.e);
        localHandler2 = ak.a(d.e);
        localak = d.e;
        localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 4, z.a(d).getString(2131231975)));
        return;
      }
      localHandler1 = ak.a(d.e);
      localHandler2 = ak.a(d.e);
      localak = d.e;
      localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 5, z.a(d).getString(2131231938)));
      return;
    }
    Handler localHandler1 = ak.a(d.e);
    Handler localHandler2 = ak.a(d.e);
    ak localak = d.e;
    localHandler1.sendMessage(localHandler2.obtainMessage(1, 0, 8, null));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */