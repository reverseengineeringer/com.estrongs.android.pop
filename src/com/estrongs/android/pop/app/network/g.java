package com.estrongs.android.pop.app.network;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.l.k;
import com.estrongs.android.ui.dialog.le;

class g
  implements AdapterView.OnItemClickListener
{
  g(EsNetworkActivity paramEsNetworkActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = EsNetworkActivity.b(a).b(paramInt - 1);
    if (paramAdapterView != null)
    {
      EsNetworkActivity.a(a, new le(a, EsNetworkActivity.b(a), paramAdapterView));
      EsNetworkActivity.e(a).show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.network.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */