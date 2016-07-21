package com.estrongs.android.scanner.d;

import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.util.l;
import java.util.Iterator;
import java.util.List;

class j
  implements k
{
  j(a parama, List paramList) {}
  
  public boolean a()
  {
    Iterator localIterator = com.estrongs.android.cleaner.j.a(a).iterator();
    String str1;
    if (localIterator.hasNext())
    {
      str1 = (String)localIterator.next();
      if (str1.endsWith("/")) {
        break label348;
      }
      str1 = str1 + "/";
    }
    label348:
    for (;;)
    {
      Object localObject = b.a(str1);
      if (((List)localObject).isEmpty()) {
        return true;
      }
      localObject = a.a(b, "pid", (List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str2 = (String)((Iterator)localObject).next();
        l.e("Dbhelper", "delete files within directory, where:" + str2);
        a.a(b).delete("audio", str2, null);
        a.a(b).delete("video", str2, null);
        a.a(b).delete("image", str2, null);
        a.a(b).delete("apk", str2, null);
        a.a(b).delete("text", str2, null);
        a.a(b).delete("zip", str2, null);
        a.a(b).delete("encrypt", str2, null);
      }
      localObject = new StringBuilder("path");
      ((StringBuilder)localObject).append(" LIKE ").append(DatabaseUtils.sqlEscapeString(str1 + "%"));
      str1 = ((StringBuilder)localObject).toString();
      l.e("Dbhelper", "delete directory-self/sub-dir, where:" + str1);
      a.a(b).delete("directory", str1, null);
      break;
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */