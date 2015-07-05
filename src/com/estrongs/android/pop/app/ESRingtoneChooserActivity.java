package com.estrongs.android.pop.app;

import android.os.Bundle;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import java.util.List;

public class ESRingtoneChooserActivity
  extends FileChooserActivity
{
  private com.estrongs.android.util.a b = null;
  
  protected boolean a(h paramh)
  {
    int j = bc.b(paramh.getAbsolutePath());
    if ((!bc.e(j)) && (!a(paramh.getAbsolutePath())))
    {
      ag.a(this, 2131428335, 1);
      return false;
    }
    if ((z.ak != null) && (z.ak.size() > 0))
    {
      int i = 0;
      while (i < z.ak.size())
      {
        if (bc.a((String)z.ak.get(i)) == j)
        {
          ag.a(this, 2131428335, 1);
          return false;
        }
        i += 1;
      }
    }
    if (((j == 196650) || (j == 131104)) && (am.bl(paramh.getAbsolutePath())))
    {
      if ((bd.e()) && (com.estrongs.fs.impl.media.a.d(paramh.getAbsolutePath()))) {
        return true;
      }
      ag.a(this, 2131428335, 1);
      return false;
    }
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = com.estrongs.android.util.a.a(this, false, "ESRingtoneChooser");
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
 * Qualified Name:     com.estrongs.android.pop.app.ESRingtoneChooserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */