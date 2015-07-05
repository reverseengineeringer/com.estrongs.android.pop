package com.estrongs.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.gs;

class z
  implements View.OnClickListener
{
  z(g paramg) {}
  
  public void onClick(View paramView)
  {
    paramView = new gs(g.d(a), ad.a(g.d(a)).L());
    paramView.a(new aa(this, paramView));
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */