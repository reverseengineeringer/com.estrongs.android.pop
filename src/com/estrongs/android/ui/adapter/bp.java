package com.estrongs.android.ui.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

class bp
  implements View.OnClickListener
{
  bp(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    paramView = new cv(ListAdapter_NewNavi.a(a)).a(2131232258).b();
    String str1 = ListAdapter_NewNavi.a(a, 2131230849);
    String str2 = ListAdapter_NewNavi.a(a, 2131230846);
    String str3 = ListAdapter_NewNavi.a(a, 2131230868);
    bq localbq = new bq(this);
    paramView.setItems(new String[] { str1, str2, str3 }, 0, localbq);
    paramView.setSelectable(false);
    paramView.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */