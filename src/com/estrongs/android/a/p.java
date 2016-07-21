package com.estrongs.android.a;

import com.estrongs.android.a.b.f;
import com.estrongs.fs.h;
import java.util.Comparator;

class p
  implements Comparator<h>
{
  p(l paraml) {}
  
  public int a(h paramh1, h paramh2)
  {
    paramh1 = (f)paramh1;
    paramh2 = (f)paramh2;
    int i = paramh2.d() - paramh1.d();
    if (i == 0) {
      return i;
    }
    return (int)(paramh2.b() - paramh1.b());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */