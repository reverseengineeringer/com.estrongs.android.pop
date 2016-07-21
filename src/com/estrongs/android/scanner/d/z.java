package com.estrongs.android.scanner.d;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class z
  extends t
{
  private Map<Long, List<c>> c;
  private final String d;
  private Set<d> e;
  private List<d> f;
  private List<d> g;
  
  public z(String paramString)
  {
    d = paramString;
    f = new ArrayList(100);
    e = new HashSet();
    g = new ArrayList(100);
  }
  
  protected String a()
  {
    return d;
  }
  
  public void a(d paramd)
  {
    a(new ad(this, paramd));
    l.b(a, "add file to insert:" + paramd);
  }
  
  public void a(w paramw)
  {
    a(new ac(this, paramw));
    l.b(a, "send store");
  }
  
  public final List<c> b(long paramLong)
  {
    try
    {
      List localList = (List)c.remove(Long.valueOf(paramLong));
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final void b()
  {
    int i = 0;
    c = new HashMap();
    aa localaa = new aa(this);
    for (;;)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(i).append(',').append(1000);
      a locala = b;
      String str = d;
      localObject = ((StringBuilder)localObject).toString();
      if (locala.a(localaa, str, new String[] { "_id", "pid", "lastmodified", "name" }, null, null, null, (String)localObject) == 0) {
        return;
      }
      i += 1000;
    }
  }
  
  public void b(d paramd)
  {
    a(new ae(this, paramd));
    l.b(a, "add file to update:" + paramd);
  }
  
  public void c(d paramd)
  {
    a(new ab(this, paramd));
    l.b(a, "add file to remove:" + paramd);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */