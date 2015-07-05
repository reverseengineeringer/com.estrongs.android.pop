package com.estrongs.android.pop;

import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import java.util.Comparator;

final class ae
  implements Comparator<String>
{
  public int a(String paramString1, String paramString2)
  {
    paramString1 = am.h(paramString1);
    paramString2 = am.h(paramString2);
    if ((bd.b(paramString1)) && (bd.b(paramString2))) {
      return am.E(paramString1).compareTo(am.E(paramString2));
    }
    return -1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */