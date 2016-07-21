package com.estrongs.android.a.a;

import com.estrongs.android.a.ai;
import com.estrongs.android.a.aj;
import com.estrongs.android.a.b.q;
import com.estrongs.android.a.b.v;
import com.estrongs.android.util.ap;
import java.util.HashSet;

public class aa
  extends e
{
  private static final HashSet<String> a = new HashSet();
  
  static
  {
    a.add(".log");
    a.add(".tmp");
    a.add(".temp");
  }
  
  public static boolean a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = paramString.toLowerCase();
    } while (!a.contains(paramString));
    return true;
  }
  
  protected q a(ai paramai)
  {
    paramai = (aj)paramai;
    return new v(paramai.a(), paramai.b(), paramai.c(), paramai.d());
  }
  
  protected boolean b(ai paramai)
  {
    if ((paramai instanceof aj))
    {
      paramai = ap.bR(((aj)paramai).b());
      if (paramai != null) {}
    }
    else
    {
      return false;
    }
    return a(paramai);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */