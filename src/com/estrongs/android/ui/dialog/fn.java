package com.estrongs.android.ui.dialog;

import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.a;
import com.estrongs.android.util.am;
import com.estrongs.fs.impl.j.b;

class fn
  implements Runnable
{
  fn(fh paramfh, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4) {}
  
  public void run()
  {
    Object localObject1 = null;
    if (!fh.a(f, a, b, c))
    {
      fh.f(f).post(new fo(this));
      return;
    }
    Object localObject2;
    if (d)
    {
      localObject2 = b.f("s3", null);
      localObject1 = am.a("s3", (String)localObject2, "fake", am.ag(a));
    }
    for (;;)
    {
      Object localObject3 = e;
      if (e.length() == 0) {
        if (!d) {}
      }
      for (;;)
      {
        if ((fh.g(f)) && (fh.h(f) != null)) {
          ad.a(FexApplication.a()).a(fh.h(f), false);
        }
        localObject3 = ad.a(fh.d(f));
        if (d)
        {
          label151:
          ((ad)localObject3).a((String)localObject1, (String)localObject2);
          localObject1 = a.a();
          if (!fh.i(f).equals("s3")) {
            break label224;
          }
          if (localObject1 != null) {
            ((a)localObject1).c("S3_Create", "S3_Create");
          }
        }
        for (;;)
        {
          fh.f(f).post(new fp(this));
          return;
          localObject2 = b;
          break;
          localObject1 = a;
          break label151;
          label224:
          if (fh.i(f).equals("vdisk"))
          {
            if (localObject1 != null) {
              ((a)localObject1).c("新浪微盘_Create", "新浪微盘_Create");
            }
          }
          else if (fh.i(f).equals("yandex"))
          {
            if (localObject1 != null) {
              ((a)localObject1).c("Yandex_Create", "Yandex_Create");
            }
          }
          else if (fh.i(f).equals("sugarsync"))
          {
            if (localObject1 != null) {
              ((a)localObject1).c("Sugarsync_Create", "Sugarsync_Create");
            }
          }
          else if ((fh.i(f).equals("kanbox")) && (localObject1 != null)) {
            ((a)localObject1).c("酷盘_Create", "酷盘_Create");
          }
        }
        localObject2 = localObject3;
      }
      localObject2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */