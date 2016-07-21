package com.estrongs.android.scanner;

import android.util.Pair;
import android.util.SparseArray;
import com.estrongs.android.scanner.a.d;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;

class j
  implements Callable<Pair<Integer, List<d>>>
{
  private final int b;
  private final long c;
  private final long d;
  
  public j(a parama, int paramInt, long paramLong1, long paramLong2)
  {
    b = paramInt;
    c = paramLong1;
    d = paramLong2;
  }
  
  public Pair<Integer, List<d>> a()
  {
    String str = (String)a.a(a).get(b);
    if (str == null) {
      return null;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("isLogPath").append("=1");
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append(">").append(c);
    ((StringBuilder)localObject).append(" AND ").append("lastmodified").append("<=").append(d);
    localObject = ((StringBuilder)localObject).toString();
    LinkedList localLinkedList = new LinkedList();
    k localk = new k(this, localLinkedList);
    if (a.b(a).a(localk, str, new String[] { "path", "name", "groupname", "filetype", "size", "lastmodified" }, (String)localObject, "lastmodified DESC") == 0) {
      return null;
    }
    return new Pair(Integer.valueOf(b), localLinkedList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */