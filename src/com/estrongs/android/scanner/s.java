package com.estrongs.android.scanner;

import com.estrongs.android.util.ap;

class s
  implements Runnable
{
  s(l paraml, String paramString1, String paramString2) {}
  
  public void run()
  {
    com.estrongs.android.util.l.e("Cataloger", "rename:" + a + "->" + b);
    String str1 = ap.bV(b);
    String str2 = ap.bV(a);
    int i = l.a(c, str1);
    if ((!str2.contains("/.estrongs/")) && (ap.bl(str2))) {
      l.a(c, 3, str2, i);
    }
    if ((!str1.contains("/.estrongs/")) && (ap.bl(str1))) {
      l.a(c, 1, str1, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */