package com.estrongs.fs.impl.a;

import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.List;

public class b
  extends com.estrongs.fs.impl.o.a
{
  private static b a;
  private static final String b = j.a + "/cache/apk.cache";
  private static boolean c = true;
  
  public static b a()
  {
    if (a == null) {
      a = new b();
    }
    return a;
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
    return "apk";
  }
  
  protected boolean d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */