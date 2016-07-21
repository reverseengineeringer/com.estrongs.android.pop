package com.estrongs.android.pop.app.analysis;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;

class v
  implements View.OnClickListener
{
  v(AnalysisResultActivity paramAnalysisResultActivity) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131624095: 
      a.finish();
      return;
    }
    if (!ad.a(a).bj())
    {
      ad.a(a).bi();
      AnalysisResultActivity.c(a).setVisibility(8);
    }
    AnalysisResultActivity.a(a, paramView);
    try
    {
      AnalysisResultActivity.b(a).a("A_top_click");
      AnalysisResultActivity.b(a).c("analysis", "A_top_click");
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */