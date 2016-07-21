package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.widget.f;

class iq
  implements View.OnClickListener
{
  iq(im paramim, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    paramView = new ir(this, ad.a(b.a).q());
    int i = -1;
    if (z.n) {
      i = -2;
    }
    paramView = new f(b.a, b.b(), paramView, i);
    paramView.a(b.a.getText(2131230720));
    paramView.a(new is(this, paramView));
    paramView.a(b.a.getString(2131231265), new it(this, paramView));
    paramView.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.iq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */