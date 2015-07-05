package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.widget.g;

class hs
  implements View.OnClickListener
{
  hs(hp paramhp, String paramString, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    ht localht = new ht(this, ad.a(c.a).p());
    PopPreferenceActivity localPopPreferenceActivity = c.a;
    if (a == null) {}
    for (paramView = b.b();; paramView = a)
    {
      paramView = new g(localPopPreferenceActivity, paramView, localht, true);
      paramView.a(c.a.getText(2131427370));
      paramView.b(c.a.getString(2131427339), new hu(this, paramView));
      paramView.c(c.a.getString(2131427340), new hv(this, paramView));
      paramView.j();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */