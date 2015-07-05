package com.estrongs.fs.a;

import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class d
{
  private static final List<h> c = new ArrayList();
  public boolean a = true;
  private Map<String, d> b = new HashMap();
  private List<h> d;
  
  public d a(String paramString)
  {
    return (d)b.get(paramString);
  }
  
  public List<h> a()
  {
    if (d == null) {
      return c;
    }
    return d;
  }
  
  public void a(String paramString, d paramd)
  {
    b.put(paramString, paramd);
  }
  
  public void a(List<h> paramList)
  {
    d = paramList;
  }
  
  public d b(String paramString)
  {
    return (d)b.remove(paramString);
  }
  
  public void b()
  {
    b.clear();
    d = null;
  }
  
  public Collection<d> c()
  {
    return b.values();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */