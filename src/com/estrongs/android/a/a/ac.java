package com.estrongs.android.a.a;

import com.estrongs.android.a.b.k;
import com.estrongs.android.a.b.q;
import java.util.Comparator;

class ac
  implements Comparator<q>
{
  ac(ab paramab) {}
  
  public int a(q paramq1, q paramq2)
  {
    paramq1 = (k)paramq1;
    paramq2 = (k)paramq2;
    long l1 = paramq1.f();
    long l2 = paramq2.f();
    if (l1 == l2) {
      return 0;
    }
    if (l1 > l2) {
      return 1;
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */