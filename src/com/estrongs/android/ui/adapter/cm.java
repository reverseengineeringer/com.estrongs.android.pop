package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

class cm
  implements View.OnClickListener
{
  cm(cl paramcl) {}
  
  public void onClick(View paramView)
  {
    paramView = new cv(ListAdapter_NewNavi.a(a.d)).a(a.c.b()).b();
    String str1 = ListAdapter_NewNavi.a(a.d, 2131230868);
    String str2 = ListAdapter_NewNavi.a(a.d, 2131230900);
    cn localcn = new cn(this);
    paramView.setItems(new String[] { str1, str2 }, 0, localcn);
    paramView.setSelectable(false);
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */