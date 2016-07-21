package com.estrongs.android.ui.e;

import android.app.Activity;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ck;

public class jm
  extends km
{
  private ck h;
  private boolean i = false;
  
  public jm(ck paramck, Activity paramActivity, boolean paramBoolean)
  {
    super(paramActivity, paramBoolean);
    h = paramck;
    int j = f.c(2131558745);
    if (e) {
      j = f.c(2131558718);
    }
    b(j);
  }
  
  private void k()
  {
    if ((b instanceof FileExplorerActivity))
    {
      FileExplorerActivity localFileExplorerActivity = (FileExplorerActivity)b;
      a(2131230871, 2130838576, new jn(this, localFileExplorerActivity));
      a(2131230867, 2130838572, new jo(this, localFileExplorerActivity));
      a(2131231265, 2130838525, new jp(this));
      i = true;
      return;
    }
    throw new IllegalArgumentException("Need FileExplorerActivity as the first argument");
  }
  
  private void l()
  {
    if ((b instanceof FileExplorerActivity))
    {
      FileExplorerActivity localFileExplorerActivity = (FileExplorerActivity)b;
      o = false;
      q = "normal_mode";
      localFileExplorerActivity.i();
    }
  }
  
  protected boolean b()
  {
    return true;
  }
  
  protected void c()
  {
    if (FileExplorerActivity.X() != null)
    {
      if (i.b()) {
        FileExplorerActivity.X().q();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.X().u();
  }
  
  protected void d()
  {
    if (FileExplorerActivity.X() != null)
    {
      if (i.b()) {
        FileExplorerActivity.X().u();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.X().q();
  }
  
  public boolean e()
  {
    l();
    return true;
  }
  
  public void h()
  {
    if (!i) {
      k();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */