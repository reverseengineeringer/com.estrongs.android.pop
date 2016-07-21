package com.estrongs.android.pop.app.cleaner;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.cleaner.a;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.view.w;

class y
  implements View.OnClickListener
{
  y(v paramv) {}
  
  public void onClick(View paramView)
  {
    a.b.v().e();
    a.b.E();
    if ((a.a instanceof FileExplorerActivity))
    {
      ((FileExplorerActivity)a.a).z();
      return;
    }
    a.a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */