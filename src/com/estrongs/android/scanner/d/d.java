package com.estrongs.android.scanner.d;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.estrongs.android.scanner.a.c;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class d
  implements k
{
  d(a parama, String paramString, List paramList) {}
  
  public boolean a()
  {
    long l1 = System.currentTimeMillis();
    Object localObject = (String)a.b(c).get(a);
    localObject = a.a(c).compileStatement((String)localObject);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      ((SQLiteStatement)localObject).clearBindings();
      localc.a((SQLiteStatement)localObject);
      ((SQLiteStatement)localObject).executeInsert();
    }
    long l2 = System.currentTimeMillis();
    l.e("Dbhelper", "insertBulk: " + (l2 - l1) + " ms/" + b.size());
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */