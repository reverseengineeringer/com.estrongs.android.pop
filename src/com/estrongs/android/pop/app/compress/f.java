package com.estrongs.android.pop.app.compress;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.estrongs.android.pop.ad;

class f
  implements View.OnClickListener
{
  f(a parama) {}
  
  public void onClick(View paramView)
  {
    paramView = new g(this, ad.a(a.d(a)).p());
    paramView = new com.estrongs.android.widget.g((Activity)a.d(a), a.b(a).getText().toString(), paramView, true, false);
    paramView.c(a.d(a).getString(2131427340), (DialogInterface.OnClickListener)null);
    paramView.a(a.d(a).getString(2131427848));
    paramView.b(a.d(a).getString(2131427339), new h(this, paramView));
    paramView.j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */