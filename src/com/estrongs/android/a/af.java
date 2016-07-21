package com.estrongs.android.a;

import com.estrongs.fs.h;
import java.util.Comparator;
import java.util.List;

final class af
  implements Comparator<List<h>>
{
  public int a(List<h> paramList1, List<h> paramList2)
  {
    int j = paramList2.size() - paramList1.size();
    int i = j;
    if (j == 0) {
      i = (int)(((h)paramList2.get(0)).length() - ((h)paramList1.get(0)).length());
    }
    if (i == 0) {
      return 0;
    }
    if (i < 0) {
      return -1;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */