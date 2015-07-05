package com.estrongs.fs.impl.m;

import android.content.Context;
import android.content.res.Resources;
import android.os.Looper;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.ui.pcs.r;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.f.c;
import com.estrongs.fs.m;
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
    if (!am.bg(paramString)) {
      throw new IllegalArgumentException(paramString);
    }
    if (am.H(paramString)) {
      return a(paramContext);
    }
    if ((am.J(paramString)) || (am.p(paramString)) || (am.I(paramString)) || (am.n(paramString)) || (am.o(paramString))) {
      return b(paramContext);
    }
    if (am.aZ(paramString)) {
      return d(paramContext);
    }
    if (am.aw(paramString)) {
      return e(paramContext);
    }
    if (am.aG(paramString)) {
      return f(paramContext);
    }
    if (am.K(paramString)) {
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
      b localb = new b("flashair://flashair/", m.N, "FlashAir");
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
    if (bd.a())
    {
      if (Looper.myLooper() == null) {
        Looper.prepare();
      }
      if (com.estrongs.android.pop.app.b.a.d) {
        com.estrongs.fs.impl.c.a.a(paramContext, localArrayList);
      }
    }
    else
    {
      return localArrayList;
    }
    return com.estrongs.fs.impl.c.a.c();
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
    String str2 = r.a().e();
    Object localObject;
    m localm;
    if (cc.a())
    {
      localObject = new StringBuilder().append("SP://");
      if (str2 != null) {
        break label129;
      }
      str1 = ":";
      localObject = str1 + "@" + "pcs";
      localm = m.K;
      if (str2 != null) {
        break label134;
      }
    }
    label129:
    label134:
    for (String str1 = FexApplication.a().getString(2131428551);; str1 = str2.split(":")[0])
    {
      localArrayList.add(new b((String)localObject, localm, str1));
      localArrayList.add(new CreateSiteFileObject(paramContext.getResources().getString(2131428081)));
      return localArrayList;
      str1 = str2;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.m.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */