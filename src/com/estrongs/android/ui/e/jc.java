package com.estrongs.android.ui.e;

import android.content.DialogInterface.OnClickListener;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.ui.dialog.cv;
import java.util.List;

class jc
  implements MenuItem.OnMenuItemClickListener
{
  jc(iq paramiq) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = iq.a(a).A();
    if (paramMenuItem.size() > 0)
    {
      Object localObject = (i)paramMenuItem.get(0);
      paramMenuItem = iq.a(a).getString(2131231709);
      String str1 = iq.a(a).getString(2131231708);
      String str2 = iq.a(a).getString(2131231707);
      cv localcv = new cv(iq.a(a)).a(2131231709);
      localObject = new jd(this, (i)localObject);
      localcv.a(new String[] { paramMenuItem, str1, str2 }, -1, (DialogInterface.OnClickListener)localObject).d(false).c();
    }
    iq.a(a).z();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */