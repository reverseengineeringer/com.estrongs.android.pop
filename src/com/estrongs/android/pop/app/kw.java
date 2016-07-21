package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class kw
  implements AdapterView.OnItemClickListener
{
  kw(RecommItemDetailAcitivity paramRecommItemDetailAcitivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(a, RecommItemImageViewer.class);
    paramAdapterView.putExtra("position", RecommItemDetailAcitivity.b(a));
    paramAdapterView.putExtra("index", paramInt);
    a.startActivity(paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */