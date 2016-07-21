package com.estrongs.android.scanner.d;

import android.database.Cursor;
import com.estrongs.android.scanner.a.b;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

class n
  implements l
{
  n(m paramm) {}
  
  public void a(Cursor paramCursor) {}
  
  public void b(Cursor paramCursor)
  {
    Object localObject1 = paramCursor.getString(1);
    Object localObject2 = paramCursor.getString(2);
    long l1 = paramCursor.getLong(0);
    long l2 = paramCursor.getLong(3);
    paramCursor.getInt(4);
    paramCursor.getInt(5);
    localObject2 = new b((String)localObject1, (String)localObject2, l1, l2);
    m.a(a).put(localObject1, localObject2);
    String str = ap.bB((String)localObject1);
    localObject1 = (List)m.b(a).get(str);
    paramCursor = (Cursor)localObject1;
    if (localObject1 == null)
    {
      paramCursor = new ArrayList();
      m.b(a).put(str, paramCursor);
    }
    paramCursor.add(localObject2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */