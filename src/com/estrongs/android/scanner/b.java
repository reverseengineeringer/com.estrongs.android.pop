package com.estrongs.android.scanner;

import android.database.Cursor;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.d.l;
import java.util.List;

class b
  implements l
{
  b(a parama, List paramList) {}
  
  public void a(Cursor paramCursor) {}
  
  public void b(Cursor paramCursor)
  {
    String str2 = paramCursor.getString(0);
    String str3 = paramCursor.getString(1);
    String str1 = paramCursor.getString(2);
    int i = paramCursor.getInt(3);
    long l1 = paramCursor.getLong(4);
    long l2 = paramCursor.getLong(5);
    int j = paramCursor.getInt(6);
    paramCursor = new d(str2 + str3, str3, l2, l1);
    paramCursor.e(j);
    paramCursor.d(i);
    paramCursor.b(str1);
    paramCursor.b(4);
    a.add(paramCursor);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */