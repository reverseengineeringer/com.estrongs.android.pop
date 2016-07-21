package com.estrongs.android.scanner.c;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.a.h;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;

public class j
  extends e
{
  private final com.estrongs.android.scanner.b.e a = new com.estrongs.android.scanner.b.e();
  
  public j()
  {
    super(4, "text");
  }
  
  public c a(String paramString1, String paramString2, int paramInt)
  {
    return a(paramString1, paramString2);
  }
  
  public d a(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    for (;;)
    {
      return null;
      int j = 100;
      paramString2 = paramString2.toLowerCase();
      int k = bg.a(paramString2);
      int m = com.estrongs.android.scanner.b.e.a(paramString2);
      int i;
      if (m != 0) {
        i = 4;
      }
      while (i == 4)
      {
        paramString1 = new h(paramString1, ap.d(paramString1), paramString2);
        paramString1.d(k);
        paramString1.e(m);
        paramString1.b(4);
        return paramString1;
        if (com.estrongs.android.scanner.b.e.b(paramString2))
        {
          i = 4;
        }
        else
        {
          i = j;
          if (k != -1)
          {
            i = j;
            if (bg.j(k)) {
              i = 4;
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */