package com.estrongs.android.scanner.d;

import android.database.Cursor;
import java.util.List;

class am
  implements l
{
  am(ak paramak, List paramList, long[] paramArrayOfLong) {}
  
  public void a(Cursor paramCursor) {}
  
  public void b(Cursor paramCursor)
  {
    ar localar = new ar(null);
    b = paramCursor.getString(1);
    a = paramCursor.getString(2);
    c = paramCursor.getLong(0);
    d = paramCursor.getLong(3);
    e = paramCursor.getLong(4);
    a.add(localar);
    if (b[0] > d) {
      b[0] = d;
    }
    if (b[1] < e) {
      b[1] = e;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */