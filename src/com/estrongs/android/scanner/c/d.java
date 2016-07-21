package com.estrongs.android.scanner.c;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.util.ap;
import java.util.HashSet;

public class d
  extends e
{
  private final HashSet<String> a = new HashSet();
  
  public d()
  {
    super(7, "encrypt");
    a.add(".eslock");
  }
  
  public c a(String paramString1, String paramString2, int paramInt)
  {
    return a(paramString1, paramString2);
  }
  
  public com.estrongs.android.scanner.a.d a(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    do
    {
      return null;
      paramString2 = paramString2.toLowerCase();
    } while (!a.contains(paramString2));
    paramString1 = new com.estrongs.android.scanner.a.d(paramString1, ap.d(paramString1), paramString2);
    paramString1.d(589840);
    paramString1.b(7);
    return paramString1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */