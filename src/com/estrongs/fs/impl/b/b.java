package com.estrongs.fs.impl.b;

import android.annotation.TargetApi;
import android.content.pm.ApplicationInfo;
import com.estrongs.fs.h;

@TargetApi(8)
public class b
  extends c
{
  public boolean a(h paramh)
  {
    boolean bool = super.a(paramh);
    if (bool) {
      return bool;
    }
    paramh = ((d)paramh).h();
    if (a == 3)
    {
      if ((flags & 0x40000) == 0) {
        return true;
      }
    }
    else if ((a == 4) && ((flags & 0x40000) != 0)) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */