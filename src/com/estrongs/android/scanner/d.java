package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.c;
import java.util.Comparator;

class d
  implements Comparator<c>
{
  d(a parama) {}
  
  public int a(c paramc1, c paramc2)
  {
    long l = paramc1.f();
    l = paramc2.f() - l;
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
 * Qualified Name:     com.estrongs.android.scanner.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */