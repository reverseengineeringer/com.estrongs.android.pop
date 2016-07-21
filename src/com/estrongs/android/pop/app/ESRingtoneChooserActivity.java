package com.estrongs.android.pop.app;

import android.os.Bundle;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.media.b;
import java.util.List;

public class ESRingtoneChooserActivity
  extends FileChooserActivity
{
  private c b = null;
  
  protected boolean a(h paramh)
  {
    int j = bg.b(paramh.getAbsolutePath());
    if ((!bg.e(j)) && (!a(paramh.getAbsolutePath())))
    {
      ak.a(this, 2131232323, 1);
      return false;
    }
    if ((z.ak != null) && (z.ak.size() > 0))
    {
      int i = 0;
      while (i < z.ak.size())
      {
        if (bg.a((String)z.ak.get(i)) == j)
        {
          ak.a(this, 2131232323, 1);
          return false;
        }
        i += 1;
      }
    }
    if (((j == 196650) || (j == 131104)) && (ap.bC(paramh.getAbsolutePath())))
    {
      if ((bk.e()) && (b.d(paramh.getAbsolutePath()))) {
        return true;
      }
      ak.a(this, 2131232323, 1);
      return false;
    }
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = c.a(this);
    try
    {
      b.d("act3");
      b.a("act3", "ringstone_choose");
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
 * Qualified Name:     com.estrongs.android.pop.app.ESRingtoneChooserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */