package com.estrongs.android.a.a;

import com.estrongs.android.a.b.l;
import com.estrongs.android.a.b.q;
import java.util.Comparator;

public class s
  extends k
{
  protected boolean a(q paramq)
  {
    if ((paramq instanceof l)) {}
    do
    {
      return false;
      paramq = (com.estrongs.android.a.b.k)paramq;
    } while ((System.currentTimeMillis() - paramq.g()) / 1000L >= 604800L);
    return true;
  }
  
  protected Comparator<q> f()
  {
    return new t(this);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */