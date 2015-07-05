package com.estrongs.a;

import java.util.Comparator;

class n
  implements Comparator<a>
{
  n(l paraml) {}
  
  public int a(a parama1, a parama2)
  {
    long l = parama2.getStartTime() - parama1.getStartTime();
    if (l < 0L) {
      return -1;
    }
    if (l > 0L) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */