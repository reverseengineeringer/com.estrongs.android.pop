package com.estrongs.android.pop.app.finder.data;

import com.estrongs.android.util.bg;
import com.estrongs.fs.h;
import com.estrongs.fs.i;

public class b
  implements i
{
  public boolean a(h paramh)
  {
    if ((paramh == null) || (paramh.getPath() == null)) {}
    do
    {
      return false;
      paramh = paramh.getPath();
    } while ((!bg.h(paramh)) && (!bg.c(paramh)) && (!bg.f(paramh)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.data.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */