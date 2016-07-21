package com.estrongs.android.scanner.c;

import com.estrongs.android.scanner.a.c;
import com.estrongs.android.scanner.a.d;
import com.estrongs.android.scanner.b.a;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;

public class b
  extends e
{
  public b()
  {
    super(2, "audio");
  }
  
  public c a(String paramString1, String paramString2, int paramInt)
  {
    return a(paramString1, paramString2);
  }
  
  public d a(String paramString1, String paramString2)
  {
    int i = -1;
    Object localObject = null;
    int j;
    String str;
    if (paramString2 == null)
    {
      j = a.a(paramString1);
      str = paramString2;
    }
    for (;;)
    {
      paramString2 = (String)localObject;
      if (j == 2)
      {
        paramString2 = new d(paramString1, ap.d(paramString1), str);
        paramString2.d(i);
        paramString2.b(2);
      }
      do
      {
        return paramString2;
        str = paramString2.toLowerCase();
        i = bg.a(str);
        if (i != -1) {
          break;
        }
        j = a.b(paramString1, str);
        paramString2 = (String)localObject;
      } while (j != 2);
      continue;
      if (bg.e(i)) {
        j = 2;
      } else {
        j = 100;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */