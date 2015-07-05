package com.estrongs.android.ui.g;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.util.j;

class i
  extends Handler
{
  i(h paramh) {}
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (what)
    {
    default: 
    case 1: 
      int i;
      int j;
      do
      {
        return;
        i = arg1;
        j = arg2;
      } while (j == 0);
      try
      {
        paramMessage = j.c(i) + "/" + j.c(j);
        h.a(a).setText(paramMessage);
        int k = i * 100 / j;
        h.b(a).setText("" + k + "%");
        h.c(a).setMax(j);
        h.c(a).setProgress(i);
        return;
      }
      catch (Exception paramMessage)
      {
        paramMessage.printStackTrace();
        return;
      }
    case 2: 
      a.b();
      return;
    }
    h.d(a);
    ag.a(h.e(a), 2131428580, 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */