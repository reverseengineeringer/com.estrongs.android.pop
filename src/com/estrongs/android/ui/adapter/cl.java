package com.estrongs.android.ui.adapter;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.util.ap;

class cl
  implements View.OnClickListener
{
  cl(ListAdapter_NewNavi paramListAdapter_NewNavi, int paramInt1, int paramInt2, a parama) {}
  
  public void onClick(View paramView)
  {
    Message localMessage = new Message();
    what = 104;
    arg1 = a;
    arg2 = b;
    if (paramView.isFocused()) {
      if (c.i == null) {
        break label71;
      }
    }
    for (obj = c.i;; obj = c.i)
    {
      label71:
      do
      {
        ListAdapter_NewNavi.d(d).sendMessage(localMessage);
        return;
      } while ((!ap.aH(c.b())) && (!ap.bL(c.b())));
      c.i = new cm(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.adapter.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */