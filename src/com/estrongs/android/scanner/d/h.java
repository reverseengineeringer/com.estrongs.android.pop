package com.estrongs.android.scanner.d;

import android.content.ContentValues;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;

class h
  implements k
{
  h(a parama, List paramList, String paramString) {}
  
  public boolean a()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      l.c("Dbhelper", "update " + b + ", pid:" + locald.i() + ", filename:" + locald.e());
      ContentValues localContentValues = locald.b();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("pid=").append(locald.i()).append(" AND ");
      localStringBuilder.append("name=").append(DatabaseUtils.sqlEscapeString(locald.e()));
      if (a.a(c).update(b, localContentValues, localStringBuilder.toString(), null) < 0L) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */