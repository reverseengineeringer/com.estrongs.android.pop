package com.estrongs.android.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.TypedMap;

class cy
  implements View.OnClickListener
{
  cy(cr paramcr) {}
  
  public void onClick(View paramView)
  {
    try
    {
      if ((a.ag instanceof FileExplorerActivity))
      {
        paramView = ((FileExplorerActivity)a.ag).at();
        if (paramView != null)
        {
          paramView.a("Search_Deeper");
          paramView.c("Search_Deeper_UV");
        }
      }
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        paramView.printStackTrace();
      }
    }
    paramView = new TypedMap();
    paramView.putAll(a.X);
    paramView.put("fileSystemSearch", Boolean.valueOf(true));
    a.a(a.c(), paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */