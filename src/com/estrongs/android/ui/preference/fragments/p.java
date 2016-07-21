package com.estrongs.android.ui.preference.fragments;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.f;

class p
  implements View.OnClickListener
{
  p(l paraml, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    paramView = new q(this, ad.a(b.a.getActivity()).q());
    int i = -1;
    if (z.n) {
      i = -2;
    }
    paramView = new f(b.a.getActivity(), b.b(), paramView, i);
    paramView.a(b.a.getText(2131230720));
    paramView.a(new r(this, paramView));
    paramView.a(b.a.getString(2131231265), new s(this, paramView));
    paramView.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */