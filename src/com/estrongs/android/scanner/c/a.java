package com.estrongs.android.scanner.c;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.util.ap;
import java.util.HashSet;

public class a
  extends e
{
  private final HashSet<String> a = new HashSet();
  
  public a()
  {
    super(6, "apk");
    a.add(".apk");
  }
  
  public c a(String paramString1, String paramString2, int paramInt)
  {
    return a(paramString1, paramString2);
  }
  
  public d a(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    do
    {
      return null;
      paramString2 = paramString2.toLowerCase();
    } while (!a.contains(paramString2));
    paramString1 = new d(paramString1, ap.d(paramString1), paramString2);
    paramString1.d(602113);
    paramString1.b(6);
    return paramString1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */