package com.estrongs.android.ui.e;

import com.estrongs.android.util.ap;

public class il
{
  public String[] a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      do
      {
        return null;
        if ("#home_page#".endsWith(paramString)) {
          return new String[] { "recommend" };
        }
        if (ap.bl(paramString)) {
          return new String[] { "disk_analysis" };
        }
        if ((ap.cj(paramString)) || (ap.bm(paramString)) || (ap.t(paramString))) {
          return new String[] { "new" };
        }
      } while (ap.V(paramString));
      if (ap.u(paramString)) {
        return new String[] { "analyse" };
      }
      if (ap.v(paramString)) {
        return new String[] { "lock_page", "unlock_page" };
      }
      if (ap.ai(paramString)) {
        return new String[] { "disk_analysis" };
      }
    } while (ap.bx(paramString));
    return new String[] { "refresh" };
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.il
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */