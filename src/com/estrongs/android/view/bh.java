package com.estrongs.android.view;

import com.estrongs.android.pop.utils.a;
import com.estrongs.android.util.am;

class bh
  implements com.estrongs.android.a.d
{
  bh(aw paramaw) {}
  
  public void a(String paramString1, String paramString2, Object paramObject)
  {
    paramString1 = am.a(am.D(paramObject.toString()), paramString1, paramString2);
    paramString1 = a.z.j(paramString1);
    if (paramString1 == null)
    {
      a.a(a.ad, 2131427906);
      return;
    }
    a.a(paramString1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */