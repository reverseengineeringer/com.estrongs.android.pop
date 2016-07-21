package com.estrongs.android.view;

import com.estrongs.android.pop.af;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Iterator;

class fc
  implements af
{
  fc(eu parameu) {}
  
  public void a(String paramString, boolean paramBoolean, int paramInt)
  {
    if (paramInt == 0)
    {
      if (paramBoolean) {
        eu.a(a, eu.a(a).indexOf(eu.d(a)));
      }
    }
    else {
      return;
    }
    if ((ap.L(paramString)) || (ap.K(paramString)) || (ap.o(paramString)) || (ap.r(paramString))) {}
    for (paramInt = 1;; paramInt = 0)
    {
      Iterator localIterator = eu.a(a).iterator();
      while (localIterator.hasNext())
      {
        fj localfj = (fj)localIterator.next();
        if (((paramInt != 0) && ("ftp://".equals(e.c()))) || ((ap.J(paramString)) && ("smb://".equals(e.c()))) || ((ap.aG(paramString)) && ("net://".equals(e.c())))) {
          eu.a(a, eu.a(a).indexOf(localfj));
        }
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */