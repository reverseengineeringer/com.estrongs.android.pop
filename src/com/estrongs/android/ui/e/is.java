package com.estrongs.android.ui.e;

import android.app.Activity;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.by;

public class is
  extends jk
{
  private by g;
  private boolean h = false;
  
  public is(by paramby, Activity paramActivity, boolean paramBoolean)
  {
    super(paramActivity, paramBoolean);
    g = paramby;
  }
  
  private void k()
  {
    if ((b instanceof FileExplorerActivity))
    {
      FileExplorerActivity localFileExplorerActivity = (FileExplorerActivity)b;
      a(2131427353, 2130838215, new it(this, localFileExplorerActivity));
      a(2131427361, 2130838212, new iu(this, localFileExplorerActivity));
      a(2131427340, 2130838155, new iv(this, localFileExplorerActivity));
      h = true;
      return;
    }
    throw new IllegalArgumentException("Need FileExplorerActivity as the first argument");
  }
  
  protected boolean b()
  {
    return true;
  }
  
  protected void c()
  {
    if (FileExplorerActivity.J() != null)
    {
      if (e.b()) {
        FileExplorerActivity.J().l();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.J().n();
  }
  
  protected void d()
  {
    if (FileExplorerActivity.J() != null)
    {
      if (e.b()) {
        FileExplorerActivity.J().n();
      }
    }
    else {
      return;
    }
    FileExplorerActivity.J().l();
  }
  
  public void h()
  {
    if (!h) {
      k();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.is
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */