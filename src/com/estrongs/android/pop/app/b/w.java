package com.estrongs.android.pop.app.b;

import android.util.Pair;
import java.util.Comparator;
import java.util.List;

class w
  implements Comparator<Pair<Long, List<b>>>
{
  w(k paramk) {}
  
  public int a(Pair<Long, List<b>> paramPair1, Pair<Long, List<b>> paramPair2)
  {
    long l = ((Long)first).longValue();
    l = ((Long)first).longValue() - l;
    if (l == 0L) {
      return 0;
    }
    if (l < 0L) {
      return 1;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */