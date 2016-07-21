package com.estrongs.android.scanner.d;

import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.scanner.a.d;
import java.util.Iterator;
import java.util.List;

class c
  implements k
{
  c(a parama, List paramList, String paramString) {}
  
  public boolean a()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("pid=").append(locald.i()).append(" AND ");
      localStringBuilder.append("name=").append(DatabaseUtils.sqlEscapeString(locald.e()));
      if (a.a(c).delete(b, localStringBuilder.toString(), null) < 0L) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */