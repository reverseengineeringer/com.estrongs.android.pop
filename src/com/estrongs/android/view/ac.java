package com.estrongs.android.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedList;

class ac
  implements Runnable
{
  ac(y paramy) {}
  
  public void run()
  {
    y.b(a).setVisibility(8);
    y.c(a).removeAllViews();
    int i = 0;
    while (i < y.h().size())
    {
      View localView = ((af)y.h().get(i)).aE();
      if (localView.getParent() != null) {
        ((ViewGroup)localView.getParent()).removeView(localView);
      }
      y.c(a).addView(localView);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */