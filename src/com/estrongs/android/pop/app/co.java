package com.estrongs.android.pop.app;

import android.app.NotificationManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.fs.b.ba;

class co
  implements View.OnClickListener
{
  co(FileSharingNotificationActivity paramFileSharingNotificationActivity) {}
  
  public void onClick(View paramView)
  {
    ba.b();
    FileSharingNotificationActivity.a(a).cancel(1);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */