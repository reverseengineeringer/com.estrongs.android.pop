package com.estrongs.android.c;

import com.estrongs.fs.h;
import com.estrongs.fs.i;

class b
  implements i
{
  private String b = null;
  private String d = null;
  
  public b(a parama, String paramString1, String paramString2)
  {
    b = paramString1;
    d = paramString2;
  }
  
  public boolean a(h paramh)
  {
    paramh = paramh.getName();
    if ((paramh.endsWith(b)) && (paramh.startsWith(d)))
    {
      if (!b.equals(".srt")) {}
      while (paramh.charAt(d.length()) == '.') {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */