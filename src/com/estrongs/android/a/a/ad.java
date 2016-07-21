package com.estrongs.android.a.a;

import com.estrongs.android.a.ai;
import com.estrongs.android.a.aj;
import com.estrongs.android.a.b.q;
import com.estrongs.android.a.b.w;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;

public class ad
  extends e
{
  protected q a(ai paramai)
  {
    paramai = (aj)paramai;
    return new w(paramai.a(), paramai.b(), paramai.c(), paramai.d());
  }
  
  protected boolean b(ai paramai)
  {
    if ((paramai instanceof aj))
    {
      paramai = ap.bR(((aj)paramai).b());
      if (paramai != null) {
        break label24;
      }
    }
    label24:
    int i;
    do
    {
      return false;
      i = bg.a(paramai.toLowerCase());
    } while (i == -1);
    return bg.g(i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */