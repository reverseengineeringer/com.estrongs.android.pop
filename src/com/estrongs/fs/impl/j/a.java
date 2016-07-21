package com.estrongs.fs.impl.j;

import com.estrongs.android.pop.app.finder.c;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.u;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class a
  implements u
{
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
    paramh = com.estrongs.android.pop.app.finder.a.a().h();
    parami = new CopyOnWriteArrayList();
    paramTypedMap = paramh.a().iterator();
    while (paramTypedMap.hasNext())
    {
      com.estrongs.android.pop.app.finder.data.d locald = new com.estrongs.android.pop.app.finder.data.d((String)paramTypedMap.next());
      locald.a(paramh.b());
      parami.addAll(com.estrongs.fs.d.a().a(locald, false, paramh));
    }
    return parami;
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
 * Qualified Name:     com.estrongs.fs.impl.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */