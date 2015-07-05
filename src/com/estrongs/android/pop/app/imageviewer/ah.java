package com.estrongs.android.pop.app.imageviewer;

import android.text.format.Formatter;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.app.imageviewer.gallery.c;

class ah
  implements Runnable
{
  ah(ag paramag) {}
  
  public void run()
  {
    long l = a.a.n();
    if (l < 0L) {}
    for (String str = "";; str = Formatter.formatFileSize(a.c, l))
    {
      ((TextView)a.d.findViewById(2131362393)).setText(str);
      ae.a(a.d, a.a, a.c);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */