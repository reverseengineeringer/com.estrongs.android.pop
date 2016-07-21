package com.estrongs.android.scanner.d;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.Set;

class f
  implements k
{
  f(a parama, Set paramSet, String paramString, long paramLong) {}
  
  public boolean a()
  {
    Iterator localIterator = a.iterator();
    ContentValues localContentValues;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localContentValues = ((c)localIterator.next()).a();
    } while (a.a(d).insert(b, null, localContentValues) >= 0L);
    for (boolean bool = false;; bool = true)
    {
      long l = System.currentTimeMillis();
      l.e("Dbhelper", "insertFileBulk: " + (l - c) + " ms/" + a.size());
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */