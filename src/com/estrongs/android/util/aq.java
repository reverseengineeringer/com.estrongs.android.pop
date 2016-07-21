package com.estrongs.android.util;

import java.util.Comparator;

final class aq
  implements Comparator<String>
{
  public int a(String paramString1, String paramString2)
  {
    return paramString2.length() - paramString1.length();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */