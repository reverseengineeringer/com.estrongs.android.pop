package com.estrongs.android.scanner.d;

import android.database.Cursor;
import android.util.Pair;
import java.util.List;

class aj
  implements l
{
  aj(ah paramah, List paramList) {}
  
  public void a(Cursor paramCursor) {}
  
  public void b(Cursor paramCursor)
  {
    paramCursor = new Pair(paramCursor.getString(0), Long.valueOf(paramCursor.getLong(1)));
    a.add(paramCursor);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */