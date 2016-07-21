package com.estrongs.android.pop.app.analysis;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow;
import com.estrongs.android.pop.app.analysis.a.aa;

class w
  implements AdapterView.OnItemClickListener
{
  w(AnalysisResultActivity paramAnalysisResultActivity) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (aa)paramAdapterView.getAdapter().getItem(paramInt);
    AnalysisResultActivity.d(a).dismiss();
    a.a().a(a, null);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */