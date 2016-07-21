package com.estrongs.android.scanner;

import android.database.Cursor;
import android.util.SparseArray;
import java.util.concurrent.Callable;

class i
  implements Callable<Integer>
{
  private final int b;
  private final long c;
  private final long d;
  
  public i(a parama, int paramInt, long paramLong)
  {
    b = paramInt;
    c = paramLong;
    d = System.currentTimeMillis();
  }
  
  public Integer a()
  {
    Object localObject1 = (String)a.a(a).get(b);
    if (localObject1 == null) {
      return null;
    }
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("isLogPath").append("=1");
    ((StringBuilder)localObject2).append(" AND ").append("lastmodified").append(">").append(c);
    ((StringBuilder)localObject2).append(" AND ").append("lastmodified").append("<=").append(d);
    localObject2 = ((StringBuilder)localObject2).toString();
    localObject1 = a.b(a).a((String)localObject1, new String[] { "count(*)" }, (String)localObject2, null);
    if (localObject1 == null) {
      return null;
    }
    int i = ((Cursor)localObject1).getCount();
    if (i == 0)
    {
      ((Cursor)localObject1).close();
      return null;
    }
    if (((Cursor)localObject1).moveToFirst()) {
      i = ((Cursor)localObject1).getInt(0);
    }
    ((Cursor)localObject1).close();
    return Integer.valueOf(i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */