package com.estrongs.android.ui.dialog;

import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.fs.impl.o.b;

class fq
  implements Runnable
{
  fq(fk paramfk, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4) {}
  
  public void run()
  {
    String str = null;
    if (!fk.a(f, a, b, c))
    {
      fk.f(f).post(new fr(this));
      return;
    }
    Object localObject1;
    if (d)
    {
      localObject1 = b.f("s3", null);
      str = ap.a("s3", (String)localObject1, "fake", ap.aq(a));
    }
    for (;;)
    {
      Object localObject2 = e;
      if (e.length() == 0) {
        if (!d) {}
      }
      for (;;)
      {
        if ((fk.g(f)) && (fk.h(f) != null)) {
          ad.a(FexApplication.a()).a(fk.h(f), false);
        }
        localObject2 = ad.a(fk.d(f));
        if (d) {}
        for (;;)
        {
          ((ad)localObject2).a(str, (String)localObject1);
          fk.f(f).post(new fs(this));
          return;
          localObject1 = b;
          break;
          str = a;
        }
        localObject1 = localObject2;
      }
      localObject1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */