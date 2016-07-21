package com.estrongs.fs.impl.r;

import android.content.Context;
import android.content.res.Resources;
import android.os.Looper;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.k.c;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.List;

public class a
{
  private static List<h> a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    ad.a(paramContext).a(localArrayList);
    return localArrayList;
  }
  
  public static List<h> a(Context paramContext, String paramString)
  {
    if (!ap.br(paramString)) {
      throw new IllegalArgumentException(paramString);
    }
    if (ap.J(paramString)) {
      return a(paramContext);
    }
    if ((ap.L(paramString)) || (ap.r(paramString)) || (ap.K(paramString)) || (ap.p(paramString)) || (ap.q(paramString))) {
      return b(paramContext);
    }
    if (ap.bk(paramString)) {
      return d(paramContext);
    }
    if (ap.aG(paramString)) {
      return e(paramContext);
    }
    if (ap.aQ(paramString)) {
      return f(paramContext);
    }
    if (ap.M(paramString)) {
      return c(paramContext);
    }
    if ("scannedserver://".equalsIgnoreCase(paramString))
    {
      paramString = new ArrayList();
      if (!c.a())
      {
        paramString.addAll(a(paramContext));
        paramString.addAll(b(paramContext));
        return paramString;
      }
      b localb = new b("flashair://flashair/", w.M, "FlashAir");
      localb.putExtra("item_is_scanned_server", Boolean.valueOf(true));
      paramString.add(localb);
      ad.a(paramContext).b("flashair://flashair/", "FlashAir", false);
      return paramString;
    }
    return null;
  }
  
  private static List<h> b(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    ad.a(paramContext).d(localArrayList);
    return localArrayList;
  }
  
  private static List<h> c(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    ad.a(paramContext).e(localArrayList);
    return localArrayList;
  }
  
  private static List<h> d(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    if (bk.a())
    {
      if (Looper.myLooper() == null) {
        Looper.prepare();
      }
      if (com.estrongs.android.pop.app.f.a.d) {
        com.estrongs.fs.impl.e.a.a(paramContext, localArrayList);
      }
    }
    else
    {
      return localArrayList;
    }
    return com.estrongs.fs.impl.e.a.c();
  }
  
  private static List<h> e(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    ad.a(paramContext).b(localArrayList);
    return localArrayList;
  }
  
  private static List<h> f(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    ad.a(paramContext).c(localArrayList);
    String str2 = u.a().e();
    Object localObject;
    w localw;
    if (cl.a())
    {
      localObject = new StringBuilder().append("SP://");
      if (str2 != null) {
        break label129;
      }
      str1 = ":";
      localObject = str1 + "@" + "pcs";
      localw = w.J;
      if (str2 != null) {
        break label134;
      }
    }
    label129:
    label134:
    for (String str1 = FexApplication.a().getString(2131231137);; str1 = str2.split(":")[0])
    {
      localArrayList.add(new b((String)localObject, localw, str1));
      localArrayList.add(new CreateSiteFileObject(paramContext.getResources().getString(2131231293)));
      return localArrayList;
      str1 = str2;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.r.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */