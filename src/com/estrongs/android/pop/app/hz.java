package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.widget.g;

class hz
  implements View.OnClickListener
{
  hz(hw paramhw, EditText paramEditText) {}
  
  public void onClick(View paramView)
  {
    paramView = new ia(this, ad.a(b.a).p());
    paramView = new g(b.a, b.b(), paramView, true);
    paramView.a(b.a.getText(2131427370));
    paramView.a(new ib(this, paramView));
    paramView.a(b.a.getString(2131427340), new ic(this, paramView));
    paramView.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */