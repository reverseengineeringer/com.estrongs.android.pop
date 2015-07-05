package com.estrongs.android.pop.app;

import android.widget.TextView;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.util.as;
import java.util.Date;

class dl
  implements Runnable
{
  dl(dk paramdk) {}
  
  public void run()
  {
    a.a.setText(a.f.a.a.name);
    if (a.f.a.a.lastModifiedTime > 0L)
    {
      long l = a.f.a.a.lastModifiedTime;
      if (l > 0L) {
        a.b.setText(dj.a(a.f).a(new Date(l)));
      }
    }
    for (;;)
    {
      ((TextView)a.f.a.findViewById(2131362518)).setText(a.f.a.a.ownerUsername);
      if ((a.f.a.a.description == null) || ("".equals(a.f.a.a.description))) {
        break;
      }
      a.c.setVisibility(0);
      a.c.setText(a.f.a.a.description);
      return;
      a.b.setText(null);
    }
    a.c.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */