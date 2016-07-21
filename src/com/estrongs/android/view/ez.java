package com.estrongs.android.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

class ez
  implements Runnable
{
  ez(ey paramey, cr paramcr) {}
  
  public void run()
  {
    Iterator localIterator = eu.a(b.a).iterator();
    while (localIterator.hasNext())
    {
      fj localfj = (fj)localIterator.next();
      if ((a == e) && (c != null)) {
        if ((d != null) && (a.d() > 0))
        {
          d.setVisibility(0);
          c.setVisibility(0);
          c.setText(a.d() + "");
          a.aE().setVisibility(0);
        }
        else
        {
          d.setVisibility(4);
          c.setVisibility(4);
          a.aE().setVisibility(8);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */