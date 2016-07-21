package com.estrongs.android.ui.adapter;

import com.estrongs.android.pop.b;
import com.estrongs.android.ui.g.a;
import com.estrongs.android.ui.g.c;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bn;
import com.estrongs.fs.util.j;
import java.util.List;

public class dp
  extends bn
{
  private c m;
  private int n = 1000;
  
  public dp(a parama)
  {
    a(parama);
  }
  
  public c a(a parama)
  {
    Object localObject;
    try
    {
      if (m != null) {
        return m;
      }
      if (n != 1000) {
        break label115;
      }
      localObject = ap.a();
      String str = b.b();
      if (((List)localObject).remove(str)) {
        ((List)localObject).add(0, str);
      }
      localObject = j.k((String)((List)localObject).get(0));
      if ((localObject[1] == -1L) || (localObject[0] == -1L)) {
        throw new IllegalStateException("illegal storage size!");
      }
    }
    catch (Exception parama)
    {
      parama.printStackTrace();
      return null;
    }
    n = ((int)(localObject[1] * 100L / localObject[0]));
    label115:
    m = parama.a(n);
    parama = m;
    return parama;
  }
  
  public void b(a parama)
  {
    m = null;
    m = a(parama);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */