package com.estrongs.android.pop.app.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;

final class h
  implements View.OnClickListener
{
  h(View paramView, TextView paramTextView, View.OnClickListener paramOnClickListener) {}
  
  public void onClick(View paramView)
  {
    a.a(true, (String)a.getTag());
    ak.a(FexApplication.a(), dd, 0);
    b.setText(de);
    try
    {
      FileExplorerActivity.X().ae().d();
      if (c == null) {}
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        try
        {
          c.onClick(a);
          return;
        }
        catch (Exception paramView)
        {
          paramView.printStackTrace();
        }
        paramView = paramView;
        paramView.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */