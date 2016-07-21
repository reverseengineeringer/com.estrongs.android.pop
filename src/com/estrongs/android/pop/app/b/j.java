package com.estrongs.android.pop.app.b;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.scanner.a;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.u;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class j
  implements u
{
  private long a()
  {
    long l1 = ad.a(FexApplication.a()).bn();
    long l2 = new Date().getTime() - 2419200000L;
    if ((l1 != -1L) && (l2 < l1)) {
      return l1;
    }
    return l2;
  }
  
  public h a(String paramString)
  {
    return null;
  }
  
  public OutputStream a(String paramString, TypedMap paramTypedMap)
  {
    return null;
  }
  
  public OutputStream a(String paramString, boolean paramBoolean)
  {
    return null;
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    parami = a.a().a(a());
    paramh = new ArrayList();
    parami = parami.iterator();
    while (parami.hasNext())
    {
      paramTypedMap = new File(((c)parami.next()).d());
      if (paramTypedMap.exists()) {
        paramh.add(new f(paramTypedMap));
      }
    }
    return paramh;
  }
  
  public boolean b(String paramString)
  {
    return false;
  }
  
  public boolean c(String paramString)
  {
    return false;
  }
  
  public InputStream d(String paramString)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */