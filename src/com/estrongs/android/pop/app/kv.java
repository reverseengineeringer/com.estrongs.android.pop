package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.ui.view.RecommendListView;

class kv
  implements AdapterView.OnItemClickListener
{
  kv(RecommAcitivity paramRecommAcitivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(a, RecommItemDetailAcitivity.class);
    paramAdapterView.putExtra("position", paramInt - RecommAcitivity.a(a).getHeaderViewsCount());
    a.startActivity(paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */