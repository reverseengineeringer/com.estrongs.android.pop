package com.estrongs.android.ui.controller;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.bb;
import com.estrongs.android.ui.dialog.bh;
import com.estrongs.android.ui.dialog.fv;
import com.estrongs.android.util.ap;

class d
  implements View.OnClickListener
{
  d(a parama, String paramString) {}
  
  public void onClick(View paramView)
  {
    if (ap.aZ(a)) {
      new bh(b.a).b();
    }
    do
    {
      return;
      if (ap.S(a))
      {
        new bb(b.a).b();
        return;
      }
    } while (!ap.bs(a));
    new fv(b.a).b();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */