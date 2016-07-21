package com.estrongs.android.pop.app;

import android.os.Bundle;
import com.estrongs.android.j.c;

public class ESContentChooserActivity
  extends FileChooserActivity
{
  private c b = null;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = c.a(this);
    b.d("act3");
    b.a("act3", "es_open_content");
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
 * Qualified Name:     com.estrongs.android.pop.app.ESContentChooserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */