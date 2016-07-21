package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import android.widget.BaseAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;

class dt
  extends Handler
{
  dt(LocalFileSharingActivity paramLocalFileSharingActivity) {}
  
  public void handleMessage(Message arg1)
  {
    switch (what)
    {
    default: 
      return;
    case 0: 
      LocalFileSharingActivity.a(a);
      LocalFileSharingActivity.b(a).notifyDataSetChanged();
      ??? = (String)obj;
      return;
    }
    LocalFileSharingActivity.a(a);
    LocalFileSharingActivity.b(a).notifyDataSetChanged();
    synchronized (LocalFileSharingActivity.c(a))
    {
      if ((LocalFileSharingActivity.c(a).length == 0) && (LocalFileSharingActivity.j() != null)) {
        a.i();
      }
      LocalFileSharingActivity.d(a).setVisibility(8);
      a.a.setText(2131231437);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */