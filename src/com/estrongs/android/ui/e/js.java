package com.estrongs.android.ui.e;

import android.view.View;
import com.estrongs.android.pop.esclasses.ESScrollView;
import com.estrongs.android.pop.esclasses.o;

class js
  implements o
{
  js(jp paramjp) {}
  
  public void a()
  {
    if (a.c)
    {
      jp.c(a).setVisibility(0);
      jp.d(a).setVisibility(4);
    }
  }
  
  public void b()
  {
    if (a.c)
    {
      jp.c(a).setVisibility(4);
      jp.d(a).setVisibility(0);
      jp.e(a).scrollTo(0, 1);
    }
  }
  
  public void c()
  {
    if (a.c)
    {
      jp.c(a).setVisibility(0);
      jp.d(a).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.js
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */