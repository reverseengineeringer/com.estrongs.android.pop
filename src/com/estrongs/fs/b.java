package com.estrongs.fs;

import java.util.ArrayList;
import java.util.List;

public class b
  implements i
{
  private List<i> a = new ArrayList();
  
  public b(i parami)
  {
    if (parami != null) {
      a.add(parami);
    }
  }
  
  public List<i> a(Class paramClass)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramClass == null) {
      return localArrayList;
    }
    int i = 0;
    while (i < a.size())
    {
      if (paramClass.isInstance(a.get(i))) {
        localArrayList.add(a.get(i));
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public void a(i parami)
  {
    a.add(parami);
  }
  
  public boolean a(h paramh)
  {
    int i = 0;
    while (i < a.size())
    {
      if (!((i)a.get(i)).a(paramh)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */