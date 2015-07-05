package com.estrongs.android.view;

import com.estrongs.android.pop.af;
import com.estrongs.android.util.am;
import java.util.ArrayList;
import java.util.Iterator;

class cw
  implements af
{
  cw(cq paramcq) {}
  
  public void a(String paramString, boolean paramBoolean, int paramInt)
  {
    if (paramInt == 0)
    {
      if (paramBoolean) {
        cq.a(a, cq.a(a).indexOf(cq.d(a)));
      }
    }
    else {
      return;
    }
    if ((am.J(paramString)) || (am.I(paramString)) || (am.m(paramString)) || (am.p(paramString))) {}
    for (paramInt = 1;; paramInt = 0)
    {
      Iterator localIterator = cq.a(a).iterator();
      while (localIterator.hasNext())
      {
        dd localdd = (dd)localIterator.next();
        if (((paramInt != 0) && ("ftp://".equals(d.c()))) || ((am.H(paramString)) && ("smb://".equals(d.c()))) || ((am.aw(paramString)) && ("net://".equals(d.c())))) {
          cq.a(a, cq.a(a).indexOf(localdd));
        }
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */