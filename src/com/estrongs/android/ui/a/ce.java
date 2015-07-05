package com.estrongs.android.ui.a;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;

class ce
  implements View.OnClickListener
{
  ce(cd paramcd) {}
  
  public void onClick(View paramView)
  {
    paramView = new ct(aa.a(a.d)).a(a.c.b()).b();
    String str1 = aa.a(a.d, 2131427368);
    String str2 = aa.a(a.d, 2131428742);
    cf localcf = new cf(this);
    paramView.setItems(new String[] { str1, str2 }, 0, localcf);
    paramView.setSelectable(false);
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */