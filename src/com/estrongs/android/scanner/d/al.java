package com.estrongs.android.scanner.d;

import android.database.Cursor;
import com.estrongs.android.pop.app.b.i;
import java.util.List;

class al
  implements l
{
  al(ak paramak, String paramString, List paramList) {}
  
  public void a(Cursor paramCursor) {}
  
  public void b(Cursor paramCursor)
  {
    String str = paramCursor.getString(0);
    long l1 = paramCursor.getLong(1);
    long l2 = paramCursor.getLong(2);
    paramCursor = new i(a + str, str, l1, l2);
    b.add(paramCursor);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */