package com.estrongs.android.widget;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.eo;

class x
  implements View.OnClickListener
{
  x(g paramg) {}
  
  public void onClick(View paramView)
  {
    paramView = new eo(g.d(a), g.d(a).getString(2131427361), g.d(a).getString(2131427427));
    a.b = g.d(a).getString(2131427427);
    paramView.a(new y(this));
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */