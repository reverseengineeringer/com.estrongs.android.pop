package com.estrongs.android.scanner.d;

import android.database.Cursor;
import com.estrongs.android.scanner.a.d;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class aa
  implements l
{
  aa(z paramz) {}
  
  public void a(Cursor paramCursor) {}
  
  public void b(Cursor paramCursor)
  {
    long l1 = paramCursor.getLong(0);
    long l2 = paramCursor.getLong(1);
    long l3 = paramCursor.getLong(2);
    d locald = new d(l1, null, paramCursor.getString(3), l3, 0L);
    List localList = (List)z.a(a).get(Long.valueOf(l2));
    paramCursor = localList;
    if (localList == null)
    {
      paramCursor = new ArrayList();
      z.a(a).put(Long.valueOf(l2), paramCursor);
    }
    paramCursor.add(locald);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */