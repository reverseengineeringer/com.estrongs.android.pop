package com.estrongs.android.a.a;

import com.estrongs.android.a.ai;
import com.estrongs.android.a.aj;
import com.estrongs.android.a.b.b;
import com.estrongs.android.a.b.q;
import com.estrongs.android.util.ap;
import java.util.HashSet;

public class a
  extends e
{
  private static final HashSet<String> a = new HashSet();
  
  static
  {
    a.add(".apk");
  }
  
  protected q a(ai paramai)
  {
    paramai = (aj)paramai;
    return new b(paramai.a(), paramai.b(), paramai.c(), paramai.d());
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
    do
    {
      return false;
      paramai = paramai.toLowerCase();
    } while (!a.contains(paramai));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */