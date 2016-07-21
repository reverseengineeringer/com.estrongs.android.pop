package com.estrongs.android.ui.adapter;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.ui.navigation.r;

class cr
  implements View.OnClickListener
{
  cr(ListAdapter_NewNavi paramListAdapter_NewNavi) {}
  
  public void onClick(View paramView)
  {
    r.a(ListAdapter_NewNavi.a(a));
    paramView = new Message();
    what = 105;
    ListAdapter_NewNavi.d(a).sendMessage(paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */