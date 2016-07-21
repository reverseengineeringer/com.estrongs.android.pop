package com.estrongs.android.ui.view;

import com.estrongs.android.util.ah;

class cf
  extends Thread
{
  cf(ce paramce, String paramString, int paramInt) {}
  
  public void run()
  {
    String str2 = ah.a(a);
    String str1 = str2;
    if (str2.startsWith("https://play.google.com/store/apps/details")) {
      str1 = str2.replaceFirst("https://play.google.com/store/apps/details", "market://details");
    }
    if (str1 != null) {}
    for (;;)
    {
      c.a.post(new cg(this, str1));
      return;
      str1 = a;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */