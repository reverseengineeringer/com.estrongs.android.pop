package com.estrongs.android.ui.view;

import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.app.c.g;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.util.ap;

class ae
  implements Runnable
{
  ae(ad paramad, g paramg) {}
  
  public void run()
  {
    aj localaj;
    TextView localTextView;
    if (b.b.a(a))
    {
      localaj = (aj)a.c.getTag(2130903123);
      localTextView = a;
      if ((a.b.e != null) && (!"".equals(a.b.e))) {
        break label130;
      }
    }
    label130:
    for (String str = ap.d(a.b.b);; str = a.b.e)
    {
      localTextView.setText(str);
      b.setText(ac.a(b.b, a.b));
      c.setText(a.b.a());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */