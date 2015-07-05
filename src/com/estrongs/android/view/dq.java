package com.estrongs.android.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class dq
  implements AdapterView.OnItemClickListener
{
  dq(dp paramdp, AdapterView.OnItemClickListener paramOnItemClickListener) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (b.a) {
      if (b.h != null) {
        b.h.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
      }
    }
    while (a == null) {
      return;
    }
    a.onItemClick(paramAdapterView, paramView, paramInt, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */