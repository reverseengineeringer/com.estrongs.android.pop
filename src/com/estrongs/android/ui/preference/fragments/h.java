package com.estrongs.android.ui.preference.fragments;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.f;

class h
  implements View.OnClickListener
{
  h(e parame, String paramString, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    i locali = new i(this, ad.a(c.a.getActivity()).q());
    int i = -1;
    if (z.n) {
      i = -2;
    }
    Activity localActivity = c.a.getActivity();
    if (a == null) {}
    for (paramView = b.b();; paramView = a)
    {
      paramView = new f(localActivity, paramView, locali, i);
      paramView.a(c.a.getText(2131230720));
      paramView.b(c.a.getString(2131231270), new j(this, paramView));
      paramView.c(c.a.getString(2131231265), new k(this, paramView));
      paramView.j();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */