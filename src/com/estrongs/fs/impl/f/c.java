package com.estrongs.fs.impl.f;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class c
  extends com.estrongs.fs.impl.t.a
{
  private static c a;
  private static final String b = j.a + "/cache/book.cache";
  private static boolean c = true;
  
  public static c a()
  {
    if (a == null) {
      a = new c();
    }
    return a;
  }
  
  public static boolean e(String paramString)
  {
    if (paramString.equals("book://")) {}
    for (paramString = ap.g();; paramString = paramString.substring("book://".length()))
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
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */