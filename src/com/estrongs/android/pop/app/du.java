package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import android.widget.BaseAdapter;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.ui.e.cf;

class du
  extends Handler
{
  du(LocalFileSharingActivity paramLocalFileSharingActivity) {}
  
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
      if ((LocalFileSharingActivity.c(a).length == 0) && (LocalFileSharingActivity.g() != null)) {
        a.f();
      }
      LocalFileSharingActivity.d(a).a(0, 2131427375, 2130838223);
      LocalFileSharingActivity.e(a).setVisibility(8);
      a.a.setText(2131427542);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */