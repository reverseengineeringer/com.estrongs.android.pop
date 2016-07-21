package com.estrongs.android.pop.app.f;

import com.estrongs.fs.h;
import com.estrongs.fs.i;
import java.util.List;

public class v
  implements i
{
  private List<String> a;
  private boolean b = true;
  private int d;
  private boolean e;
  
  public v(String paramString, boolean paramBoolean)
  {
    a = q.a(paramString);
    e = paramBoolean;
    if (b)
    {
      int i = 0;
      while (i < a.size())
      {
        a.set(i, ((String)a.get(i)).toLowerCase());
        i += 1;
      }
    }
  }
  
  public int a()
  {
    return d;
  }
  
  public boolean a(h paramh)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    d = 0;
    int i;
    boolean bool1;
    if (b)
    {
      paramh = paramh.getName().toLowerCase();
      i = 0;
      while (i < a.size())
      {
        if (paramh.contains((CharSequence)a.get(i)))
        {
          bool1 = bool2;
          if (!e) {
            break label102;
          }
          d += 1;
        }
        i += 1;
      }
      bool1 = bool3;
      if (d > 0) {
        bool1 = true;
      }
    }
    label102:
    label171:
    do
    {
      return bool1;
      i = 0;
      for (;;)
      {
        if (i >= a.size()) {
          break label171;
        }
        if (paramh.getName().contains((CharSequence)a.get(i)))
        {
          bool1 = bool2;
          if (!e) {
            break;
          }
          d += 1;
        }
        i += 1;
      }
      bool1 = bool2;
    } while (d > 0);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.f.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */