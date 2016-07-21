package com.estrongs.android.pop.app;

import android.os.Bundle;
import com.estrongs.android.j.c;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bg;
import com.estrongs.fs.h;

public class ESWallPaperChooserActivity
  extends FileChooserActivity
{
  private c b = null;
  
  protected boolean a(h paramh)
  {
    boolean bool = true;
    if (!bg.a(bg.b(paramh.getAbsolutePath())))
    {
      ak.a(this, 2131232323, 1);
      bool = false;
    }
    return bool;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = c.a(this);
    try
    {
      b.d("act3");
      b.a("act3", "es_wall_paper_choose");
      return;
    }
    catch (Exception paramBundle)
    {
      paramBundle.printStackTrace();
    }
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ESWallPaperChooserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */