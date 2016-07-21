package com.estrongs.android.scanner.c;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;

public class l
  extends e
{
  public l()
  {
    super(5, "zip");
  }
  
  public c a(String paramString1, String paramString2, int paramInt)
  {
    return a(paramString1, paramString2);
  }
  
  public d a(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    int i;
    do
    {
      return null;
      paramString2 = paramString2.toLowerCase();
      i = bg.a(paramString2);
    } while ((i == -1) || (!bg.k(i)));
    paramString1 = new d(paramString1, ap.d(paramString1), paramString2);
    paramString1.d(i);
    paramString1.b(5);
    return paramString1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */