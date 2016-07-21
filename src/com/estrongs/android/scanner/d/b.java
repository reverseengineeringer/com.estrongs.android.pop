package com.estrongs.android.scanner.d;

import android.database.sqlite.SQLiteDatabase;
import java.util.Iterator;
import java.util.List;

class b
  implements k
{
  b(a parama, List paramList, String paramString) {}
  
  public boolean a()
  {
    Iterator localIterator = a.a(c, "_id", a).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (a.a(c).delete(b, str, null) > 0) {}
      for (int i = 1; i == 0; i = 0) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */