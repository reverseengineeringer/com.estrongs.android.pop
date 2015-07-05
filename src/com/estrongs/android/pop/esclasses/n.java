package com.estrongs.android.pop.esclasses;

import android.view.View;

final class n
  implements Runnable
{
  n(View paramView1, View paramView2) {}
  
  public void run()
  {
    if ((a == null) || (b == null)) {
      return;
    }
    int j = b.getMeasuredHeight() - a.getHeight();
    int i = j;
    if (j < 0) {
      i = 0;
    }
    a.scrollTo(0, i);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */