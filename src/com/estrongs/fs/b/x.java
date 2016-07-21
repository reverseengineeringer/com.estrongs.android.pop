package com.estrongs.fs.b;

import com.estrongs.android.util.ap;
import java.text.Collator;
import java.util.Comparator;

class x
  implements Comparator<String>
{
  x(w paramw) {}
  
  public int a(String paramString1, String paramString2)
  {
    try
    {
      int i = a.b.compare(ap.d(paramString1).toLowerCase(), ap.d(paramString2).toLowerCase());
      return i;
    }
    catch (Throwable paramString1) {}
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */