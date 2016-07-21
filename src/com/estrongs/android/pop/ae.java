package com.estrongs.android.pop;

import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import java.util.Comparator;

final class ae
  implements Comparator<String>
{
  public int a(String paramString1, String paramString2)
  {
    paramString1 = ap.i(paramString1);
    paramString2 = ap.i(paramString2);
    if ((bk.b(paramString1)) && (bk.b(paramString2))) {
      return ap.G(paramString1).compareTo(ap.G(paramString2));
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */