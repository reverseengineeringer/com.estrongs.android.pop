package com.estrongs.android.a;

import android.text.TextUtils;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class al
{
  private final Set<String> a = new HashSet();
  private final Set<String> b = new HashSet();
  private final Set<String> c = new HashSet();
  
  public al()
  {
    b.add(".nomedia");
    Iterator localIterator = j.b().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      c.add(str + "/.estrongs");
    }
    c.add(a.b);
  }
  
  public boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (c.contains(paramString)) {
      return true;
    }
    return false;
  }
  
  public boolean b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (paramString.equals(".nomedia")) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */