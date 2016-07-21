package com.estrongs.android.pop.app.b;

import com.estrongs.fs.h;
import java.util.Comparator;

final class f
  implements Comparator<h>
{
  public int a(h paramh1, h paramh2)
  {
    long l1 = paramh1.lastModified();
    long l2 = paramh2.lastModified();
    if (l1 > l2) {
      return -1;
    }
    if (l1 < l2) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */