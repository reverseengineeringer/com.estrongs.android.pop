package com.estrongs.android.scanner.d;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.scanner.a.c;
import java.util.Iterator;
import java.util.List;

class g
  implements k
{
  g(a parama, List paramList, String paramString) {}
  
  public boolean a()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      ContentValues localContentValues = localc.b();
      if (a.a(c).update(b, localContentValues, "_id=" + localc.c(), null) < 0L) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */