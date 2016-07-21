package com.estrongs.android.pop.app.network;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.estrongs.android.l.k;

class e
  implements View.OnClickListener
{
  e(EsNetworkActivity paramEsNetworkActivity) {}
  
  public void onClick(View paramView)
  {
    if (EsNetworkActivity.d(a).isEnabled()) {
      EsNetworkActivity.b(a).c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.network.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */