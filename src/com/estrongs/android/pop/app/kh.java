package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class kh
  implements AdapterView.OnItemClickListener
{
  kh(RecommAcitivity paramRecommAcitivity, int paramInt) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(b, RecommItemDetailAcitivity.class);
    paramAdapterView.putExtra("position", paramInt);
    paramAdapterView.putExtra("com.estrongs.intent.extra.TITLE", a);
    b.startActivity(paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */