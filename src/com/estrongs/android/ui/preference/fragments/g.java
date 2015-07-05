package com.estrongs.android.ui.preference.fragments;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;

class g
  implements View.OnClickListener
{
  g(d paramd, String paramString, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    h localh = new h(this, ad.a(c.a.getActivity()).p());
    Activity localActivity = c.a.getActivity();
    if (a == null) {}
    for (paramView = b.b();; paramView = a)
    {
      paramView = new com.estrongs.android.widget.g(localActivity, paramView, localh, true);
      paramView.a(c.a.getText(2131427370));
      paramView.b(c.a.getString(2131427339), new i(this, paramView));
      paramView.c(c.a.getString(2131427340), new j(this, paramView));
      paramView.j();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */