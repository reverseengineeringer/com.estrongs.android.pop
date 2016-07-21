package com.estrongs.android.scanner.d;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.scanner.a.b;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.Set;

class e
  implements k
{
  e(a parama, Set paramSet, long paramLong) {}
  
  public boolean a()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      ContentValues localContentValues = localb.a();
      if (a.a(c).insert("directory", null, localContentValues) < 0L) {
        l.e("Dbhelper", "!!error for inserting dir, path:" + localb);
      }
    }
    for (boolean bool = false;; bool = true)
    {
      long l = System.currentTimeMillis();
      l.e("Dbhelper", "insertDirBulk: " + (l - b) + " ms/" + a.size());
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */