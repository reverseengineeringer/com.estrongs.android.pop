package com.estrongs.android.pop.app.analysis;

import android.text.TextUtils;
import com.estrongs.android.b.a.a;
import java.util.Comparator;

class i
  implements Comparator<a>
{
  i(f paramf) {}
  
  public int a(a parama1, a parama2)
  {
    if ((!TextUtils.isEmpty(parama1.m())) && (parama1.m().equals("junk"))) {}
    while ((parama1.i()) && (!parama2.i())) {
      return 1;
    }
    if ((!parama1.i()) && (!parama2.i())) {
      return 0;
    }
    if ((parama1.i()) && (parama2.i())) {
      return 0;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */