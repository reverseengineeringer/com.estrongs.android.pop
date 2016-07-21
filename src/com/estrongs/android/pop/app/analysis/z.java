package com.estrongs.android.pop.app.analysis;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.b;
import com.estrongs.fs.util.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class z
{
  private static z b = null;
  private Map<String, List<y>> a = new HashMap();
  
  private z()
  {
    a("sdcard_top_view");
  }
  
  public static z a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new z();
      }
      return b;
    }
    finally {}
  }
  
  private void a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new aa());
    a.put(paramString, localArrayList);
  }
  
  public static void b()
  {
    Object localObject = j.k(b.b());
    long l1 = localObject[1];
    long l2 = localObject[2];
    localObject = ai.b(FexApplication.a());
    ((ai)localObject).b("sdcard_available_memory", Long.valueOf(l2 * l1));
    ((ai)localObject).b("sdcard_topview_show_date", Long.valueOf(System.currentTimeMillis()));
  }
  
  public static void c()
  {
    ai localai = ai.b(FexApplication.a());
    if (localai.a("sdcard_topview_show_date", Long.valueOf(0L)) == 0L) {
      localai.b("sdcard_topview_show_date", Long.valueOf(System.currentTimeMillis()));
    }
    if (localai.a("sdcard_available_memory", Long.valueOf(0L)) == 0L)
    {
      long[] arrayOfLong = j.k(b.b());
      localai.b("sdcard_available_memory", Long.valueOf(arrayOfLong[1] * arrayOfLong[2]));
    }
  }
  
  public y a(String paramString1, String paramString2)
  {
    paramString1 = (List)a.get(paramString1);
    if (paramString1 != null)
    {
      paramString1 = paramString1.iterator();
      while (paramString1.hasNext())
      {
        y localy = (y)paramString1.next();
        localy.a(paramString2);
        if (localy.b()) {
          return localy;
        }
      }
    }
    return null;
  }
  
  public void d()
  {
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */