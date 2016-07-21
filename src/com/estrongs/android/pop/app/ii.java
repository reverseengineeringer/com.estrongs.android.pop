package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.f;

class ii
  implements View.OnClickListener
{
  ii(if paramif, String paramString, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    ij localij = new ij(this, ad.a(c.a).q());
    int i = -1;
    if (z.n) {
      i = -2;
    }
    PopPreferenceActivity localPopPreferenceActivity = c.a;
    if (a == null) {}
    for (paramView = b.b();; paramView = a)
    {
      paramView = new f(localPopPreferenceActivity, paramView, localij, i);
      paramView.a(c.a.getText(2131230720));
      paramView.b(c.a.getString(2131231270), new ik(this, paramView));
      paramView.c(c.a.getString(2131231265), new il(this, paramView));
      paramView.j();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */