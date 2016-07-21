package com.duapps.ad;

import android.content.Context;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.stats.b;
import java.util.HashMap;

public class k
{
  private static k c;
  private HashMap<Integer, j> a = new HashMap();
  private Context b;
  
  private k(Context paramContext)
  {
    b = paramContext;
  }
  
  public static k a(Context paramContext)
  {
    try
    {
      if (c == null) {
        c = new k(paramContext.getApplicationContext());
      }
      return c;
    }
    finally {}
  }
  
  public j a(int paramInt1, int paramInt2)
  {
    if (a.containsKey(Integer.valueOf(paramInt1))) {
      return (j)a.get(Integer.valueOf(paramInt1));
    }
    a locala = new a(b, paramInt1, paramInt2);
    a.put(Integer.valueOf(paramInt1), locala);
    return locala;
  }
  
  public void a(int paramInt, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    paramArrayOfString1 = ap.a(paramArrayOfString1);
    String str = ap.a(paramArrayOfString2);
    l.c("PullRequest", "OldPriority:" + paramArrayOfString1 + " ,newPriority:" + str + " sid:" + paramInt);
    if (!paramArrayOfString1.equals(str)) {
      b.a(b, paramInt, str);
    }
    if ((a == null) || (paramArrayOfString2 == null)) {}
    do
    {
      return;
      paramArrayOfString1 = (j)a.get(Integer.valueOf(paramInt));
    } while (paramArrayOfString1 == null);
    paramArrayOfString1.a(paramArrayOfString2);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */