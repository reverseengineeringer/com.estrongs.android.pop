package com.estrongs.android.pop.app.finder.data;

import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.i;

public class c
  implements i
{
  public boolean a(h paramh)
  {
    if ((paramh == null) || (paramh.getPath() == null)) {}
    do
    {
      return false;
      paramh = paramh.getPath();
    } while ((ap.bl(paramh)) && (paramh.contains("Android/data/")));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.data.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */