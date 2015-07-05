package com.estrongs.fs.impl.d;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class b
  extends com.estrongs.fs.impl.o.a
{
  private static b a;
  private static final String b = j.a + "/cache/book.cache";
  private static boolean c = true;
  
  public static b a()
  {
    if (a == null) {
      a = new b();
    }
    return a;
  }
  
  public static boolean e(String paramString)
  {
    if (paramString.equals("book://")) {}
    for (paramString = am.g();; paramString = paramString.substring("book://".length()))
    {
      return new File(paramString).exists();
      if (!paramString.startsWith("book://")) {
        break;
      }
    }
    return false;
  }
  
  public List<h> a(h paramh, i parami, TypedMap paramTypedMap)
  {
    ArrayList localArrayList = new ArrayList();
    paramh = super.a(paramh, parami, paramTypedMap);
    int i = 0;
    while (i < paramh.size())
    {
      localArrayList.add(new a((h)paramh.get(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  protected void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  protected String b()
  {
    return b;
  }
  
  protected String c()
  {
    return "document";
  }
  
  protected boolean d()
  {
    return c;
  }
  
  public int e()
  {
    List localList;
    if (new File(b()).exists())
    {
      localList = f();
      if (localList != null) {}
    }
    else
    {
      return -1;
    }
    return localList.size();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */