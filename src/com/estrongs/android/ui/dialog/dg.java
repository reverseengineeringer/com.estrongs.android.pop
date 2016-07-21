package com.estrongs.android.ui.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.q;
import java.util.Iterator;
import java.util.List;

class dg
  implements View.OnClickListener
{
  dg(df paramdf, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (df.a(b) != null)
    {
      paramView = df.a.iterator();
      while (paramView.hasNext())
      {
        q localq = (q)paramView.next();
        if (((Integer)a).intValue() == a)
        {
          ad.a(b.getContext()).d(((Integer)b).intValue());
          df.a(b).a(((Integer)b).intValue());
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */