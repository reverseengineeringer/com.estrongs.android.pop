package com.estrongs.android.pop.app;

import android.os.Bundle;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.a;
import com.estrongs.android.util.bc;
import com.estrongs.fs.h;

public class ESWallPaperChooserActivity
  extends FileChooserActivity
{
  private a b = null;
  
  protected boolean a(h paramh)
  {
    boolean bool = true;
    if (!bc.a(bc.b(paramh.getAbsolutePath())))
    {
      ag.a(this, 2131428335, 1);
      bool = false;
    }
    return bool;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = a.a(this, false, "ESWallPaperChooser");
  }
  
  protected void onPause()
  {
    super.onPause();
    if (b != null) {
      b.c();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (b != null) {
      b.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ESWallPaperChooserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */