package com.estrongs.android.view;

import com.estrongs.android.pop.utils.a;
import com.estrongs.android.util.ap;

class dc
  implements com.estrongs.android.d.d
{
  dc(cr paramcr) {}
  
  public void a(String paramString1, String paramString2, Object paramObject)
  {
    paramString1 = ap.a(ap.F(paramObject.toString()), paramString1, paramString2);
    paramString1 = a.G.j(paramString1);
    if (paramString1 == null)
    {
      a.a(a.ag, 2131231051);
      return;
    }
    a.c(paramString1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */