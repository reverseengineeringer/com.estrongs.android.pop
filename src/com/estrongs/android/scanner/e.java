package com.estrongs.android.scanner;

import android.database.Cursor;
import android.util.Pair;
import android.util.SparseArray;
import com.estrongs.android.util.l;
import java.util.concurrent.Callable;

class e
  implements Callable<Pair<Integer, Integer>>
{
  private final int b;
  private final long c;
  private final long d;
  private final boolean e;
  
  public e(a parama, int paramInt, long paramLong, boolean paramBoolean)
  {
    b = paramInt;
    c = paramLong;
    d = System.currentTimeMillis();
    e = paramBoolean;
  }
  
  public Pair<Integer, Integer> a()
  {
    String str = (String)a.a(a).get(b);
    if (str == null) {
      return null;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("lastmodified").append(">").append(c).append(" AND ");
    ((StringBuilder)localObject).append("lastmodified").append("<=").append(d);
    if (!e) {
      ((StringBuilder)localObject).append(" AND ").append("pathtype").append("!=").append(3);
    }
    localObject = ((StringBuilder)localObject).toString();
    localObject = a.b(a).a(str, new String[] { "count(*)" }, (String)localObject, null);
    if (localObject == null) {
      return null;
    }
    int i = ((Cursor)localObject).getCount();
    if (i == 0) {
      return null;
    }
    l.e("Accessor", "number of " + str + ":" + i);
    if (((Cursor)localObject).moveToFirst()) {
      i = ((Cursor)localObject).getInt(0);
    }
    for (;;)
    {
      ((Cursor)localObject).close();
      return new Pair(Integer.valueOf(b), Integer.valueOf(i));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */