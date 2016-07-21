package com.estrongs.android.scanner.d;

import android.util.Pair;
import com.estrongs.android.pop.app.b.b;
import java.util.Comparator;
import java.util.List;

class an
  implements Comparator<Pair<Long, List<b>>>
{
  an(ak paramak) {}
  
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
 * Qualified Name:     com.estrongs.android.scanner.d.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */