package com.estrongs.android.pop.app.analysis.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.analysis.AnalysisResultDetailActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

class d
  implements View.OnClickListener
{
  d(a parama, com.estrongs.android.b.a.a parama1) {}
  
  public void onClick(View paramView)
  {
    if (a.l().equals("junk"))
    {
      paramView = new Intent(a.c(b), FileExplorerActivity.class);
      paramView.setData(Uri.parse("clean://"));
      paramView.addFlags(268435456);
      paramView.addFlags(67108864);
      a.c(b).startActivity(paramView);
    }
    do
    {
      for (;;)
      {
        try
        {
          c.a(a.c(b)).a("Analysis_junk");
          ((Activity)a.c(b)).finish();
          return;
        }
        catch (Exception paramView)
        {
          paramView.printStackTrace();
          continue;
        }
        if ((a.m() != null) && (a.m().equals("appcatalog")))
        {
          if (TextUtils.isEmpty(a.p()))
          {
            paramView = new Intent(a.c(b), FileExplorerActivity.class);
            paramView.setData(Uri.parse("appfolder://"));
            paramView.addFlags(268435456);
            paramView.addFlags(67108864);
            a.c(b).startActivity(paramView);
          }
          for (;;)
          {
            try
            {
              c.a(a.c(b)).a("Analysis_associate");
              return;
            }
            catch (Exception paramView)
            {
              paramView.printStackTrace();
              return;
            }
            AnalysisResultDetailActivity.a((Activity)a.c(b), a);
          }
        }
        if ((a.m() != null) && (a.m().equals("similar_image"))) {
          try
          {
            paramView = c.a(a.c(b));
            paramView.a("A_similar_click");
            paramView.c("analysis", "A_similar_click");
            if (!a.i())
            {
              AnalysisResultDetailActivity.a((Activity)a.c(b), a);
              return;
            }
          }
          catch (Exception paramView)
          {
            for (;;)
            {
              paramView.printStackTrace();
            }
          }
        }
      }
    } while (a.i());
    AnalysisResultDetailActivity.a((Activity)a.c(b), a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */