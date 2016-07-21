package com.estrongs.android.pop.view;

import com.estrongs.android.pop.app.f.s;
import com.estrongs.android.pop.app.f.w;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.i;

public class eg
  implements i
{
  private String b;
  private String d;
  private w e = null;
  private s f = null;
  private boolean g = true;
  
  public eg(FileExplorerActivity paramFileExplorerActivity) {}
  
  public void a()
  {
    g = true;
    b = null;
    d = null;
    e = null;
    f = null;
  }
  
  public void a(long paramLong1, long paramLong2)
  {
    if ((paramLong1 < 0L) && (paramLong2 < 0L))
    {
      e = null;
      return;
    }
    e = new w(paramLong1, paramLong2);
    g = false;
  }
  
  public void a(String paramString)
  {
    if (bk.b(paramString))
    {
      b = paramString;
      d = paramString.trim().toLowerCase();
      g = false;
    }
  }
  
  public boolean a(h paramh)
  {
    if (g) {}
    do
    {
      return true;
      if ((d != null) && (!"".equals(d)) && (paramh.getName().toLowerCase().indexOf(d) < 0)) {
        return false;
      }
      if ((e != null) && (!e.a(paramh))) {
        return false;
      }
    } while ((f == null) || (f.a(paramh)));
    return false;
  }
  
  public void b(long paramLong1, long paramLong2)
  {
    if ((paramLong1 < 0L) && (paramLong2 < 0L))
    {
      f = null;
      return;
    }
    f = new s(paramLong1, paramLong2);
    g = false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */