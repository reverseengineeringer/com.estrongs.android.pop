package com.estrongs.fs.impl.i;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.f.r;
import com.estrongs.android.ui.topclassify.c;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.k;
import com.estrongs.fs.u;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class a
  extends com.estrongs.fs.impl.media.a
  implements u
{
  private int a;
  private com.estrongs.android.scanner.a b;
  
  public a(int paramInt)
  {
    a = paramInt;
    b = com.estrongs.android.scanner.a.a();
  }
  
  protected abstract h a(com.estrongs.fs.impl.local.f paramf);
  
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
  
  protected List<com.estrongs.android.scanner.a.d> a(com.estrongs.android.scanner.f paramf)
  {
    paramf.a(a);
    return b.a(paramf);
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    return super.a(paramh, parami, paramTypedMap);
  }
  
  public List<h> b(h paramh, i parami, TypedMap paramTypedMap)
  {
    boolean bool2 = true;
    r localr = new r(false);
    Object localObject1 = new com.estrongs.android.scanner.f();
    boolean bool3 = com.estrongs.android.pop.ad.a(FexApplication.a()).bo();
    boolean bool1 = bool3;
    if (paramh != null)
    {
      bool1 = bool3;
      if ((paramh instanceof c)) {
        bool1 = true;
      }
    }
    label118:
    Object localObject2;
    if (!bool1)
    {
      bool1 = true;
      ((com.estrongs.android.scanner.f)localObject1).b(bool1);
      bool3 = com.estrongs.android.pop.ad.a(FexApplication.a()).q();
      bool1 = bool3;
      if (paramh != null)
      {
        bool1 = bool3;
        if ((paramh instanceof com.estrongs.android.pop.app.finder.data.d)) {
          bool1 = ((com.estrongs.android.pop.app.finder.data.d)paramh).a();
        }
      }
      if (bool1) {
        break label333;
      }
      bool1 = bool2;
      ((com.estrongs.android.scanner.f)localObject1).a(bool1);
      paramTypedMap = com.estrongs.android.pop.utils.ad.f();
      localObject2 = com.estrongs.android.pop.utils.ad.a(paramTypedMap);
      if (paramTypedMap.length <= 0) {
        break label342;
      }
      paramh = new r(false);
      paramh.a(new b(this, paramTypedMap, (String[])localObject2));
    }
    for (;;)
    {
      localObject2 = new LinkedList();
      if (parami != null)
      {
        paramTypedMap = Boolean.valueOf(false);
        if ((parami instanceof k)) {
          paramTypedMap = ((k)parami).a((com.estrongs.android.scanner.f)localObject1);
        }
        if (!paramTypedMap.booleanValue()) {
          localr.a(parami);
        }
      }
      parami = a((com.estrongs.android.scanner.f)localObject1);
      if (parami != null)
      {
        parami = parami.iterator();
        for (;;)
        {
          if (parami.hasNext())
          {
            paramTypedMap = (com.estrongs.android.scanner.a.d)parami.next();
            localObject1 = new File(paramTypedMap.d());
            if ((!((File)localObject1).isDirectory()) && (((File)localObject1).exists()))
            {
              paramTypedMap = new com.estrongs.fs.impl.local.f((File)localObject1, paramTypedMap.m());
              if ((localr.a(paramTypedMap)) && ((paramh == null) || (paramh.a(paramTypedMap))))
              {
                ((LinkedList)localObject2).add(a(paramTypedMap));
                continue;
                bool1 = false;
                break;
                label333:
                bool1 = false;
                break label118;
              }
            }
          }
        }
      }
      return (List<h>)localObject2;
      label342:
      paramh = null;
    }
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
 * Qualified Name:     com.estrongs.fs.impl.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */