package com.estrongs.android.ui.preference.fragments;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.widget.g;

class n
  implements View.OnClickListener
{
  n(k paramk, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    paramView = new o(this, ad.a(b.a.getActivity()).p());
    paramView = new g(b.a.getActivity(), b.b(), paramView, true);
    paramView.a(b.a.getText(2131427370));
    paramView.a(new p(this, paramView));
    paramView.a(b.a.getString(2131427340), new q(this, paramView));
    paramView.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */