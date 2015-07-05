package com.estrongs.android.pop.app;

import android.os.Bundle;
import com.estrongs.android.util.a;

public class ESContentChooserActivity
  extends FileChooserActivity
{
  private a b = null;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = a.a(this, false, "ESContentChooser");
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
 * Qualified Name:     com.estrongs.android.pop.app.ESContentChooserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */