package com.estrongs.android.ui.theme;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;

class e
  implements View.OnClickListener
{
  e(ModifyThemeActivity paramModifyThemeActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new f(this, ad.a(a).q());
    paramView = new com.estrongs.android.widget.f(a, b.b(), paramView);
    paramView.a(a.getText(2131230720));
    paramView.a(a.getString(2131231265), new g(this));
    paramView.a(new h(this));
    paramView.j();
    ModifyThemeActivity.a(a, paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */