package com.estrongs.android.ui.theme;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;

class f
  implements View.OnClickListener
{
  f(ModifyThemeActivity paramModifyThemeActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new g(this, ad.a(a).p());
    paramView = new com.estrongs.android.widget.g(a, b.b(), paramView);
    paramView.a(a.getText(2131427370));
    paramView.a(a.getString(2131427340), new h(this));
    paramView.a(new i(this));
    paramView.j();
    ModifyThemeActivity.a(a, paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */