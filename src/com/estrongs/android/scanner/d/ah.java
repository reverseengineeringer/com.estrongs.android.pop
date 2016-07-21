package com.estrongs.android.scanner.d;

import android.util.Pair;
import com.estrongs.android.util.ap;
import java.util.LinkedList;
import java.util.List;

public class ah
{
  private static ah a = new ah();
  private final a b = a.a();
  
  public static ah a()
  {
    return a;
  }
  
  public final List<Pair<String, Long>> a(int paramInt, Long[] paramArrayOfLong)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("category").append('=').append(paramInt);
    if (paramArrayOfLong[0] != null) {
      ((StringBuilder)localObject).append(" AND ").append("timestamp").append('>').append(paramArrayOfLong[0]);
    }
    if (paramArrayOfLong[1] != null) {
      ((StringBuilder)localObject).append(" AND ").append("timestamp").append("<=").append(paramArrayOfLong[1]);
    }
    paramArrayOfLong = ((StringBuilder)localObject).toString();
    localObject = new LinkedList();
    aj localaj = new aj(this, (List)localObject);
    b.a(localaj, "latestOpen", new String[] { "path", "timestamp" }, paramArrayOfLong, "timestamp DESC");
    return (List<Pair<String, Long>>)localObject;
  }
  
  public final void a(String paramString)
  {
    int i = com.estrongs.android.scanner.b.a.a(paramString, ap.bR(paramString));
    if (i == 100) {
      return;
    }
    paramString = new ai(this, paramString, i);
    af.a().a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */