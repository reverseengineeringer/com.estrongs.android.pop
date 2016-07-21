package com.estrongs.android.a.a;

import com.estrongs.android.a.b.o;
import java.util.Comparator;

class y
  implements Comparator<o>
{
  y(x paramx) {}
  
  public int a(o paramo1, o paramo2)
  {
    long l = paramo1.i();
    l = paramo2.i() - l;
    if (l == 0L) {
      return 0;
    }
    if (l < 0L) {
      return -1;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */