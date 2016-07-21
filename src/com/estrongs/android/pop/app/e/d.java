package com.estrongs.android.pop.app.e;

import java.util.Comparator;

class d
  implements Comparator<com.estrongs.android.scanner.a.d>
{
  d(c paramc) {}
  
  public int a(com.estrongs.android.scanner.a.d paramd1, com.estrongs.android.scanner.a.d paramd2)
  {
    long l = paramd1.f();
    l = paramd2.f() - l;
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
 * Qualified Name:     com.estrongs.android.pop.app.e.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */