package com.estrongs.android.a;

import com.estrongs.android.a.b.f;
import com.estrongs.fs.h;
import java.util.Comparator;

class o
  implements Comparator<h>
{
  o(l paraml) {}
  
  public int a(h paramh1, h paramh2)
  {
    paramh1 = (f)paramh1;
    return (int)(((f)paramh2).length() - paramh1.length());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */