package com.estrongs.android.ui.e;

import android.content.DialogInterface.OnClickListener;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.ui.dialog.ct;
import java.util.List;

class hu
  implements MenuItem.OnMenuItemClickListener
{
  hu(hl paramhl) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    paramMenuItem = hl.a(a).v();
    if (paramMenuItem.size() > 0)
    {
      Object localObject = (ak)paramMenuItem.get(0);
      paramMenuItem = hl.a(a).getString(2131427939);
      String str1 = hl.a(a).getString(2131427941);
      String str2 = hl.a(a).getString(2131427940);
      ct localct = new ct(hl.a(a)).a(2131427939);
      localObject = new hv(this, (ak)localObject);
      localct.a(new String[] { paramMenuItem, str1, str2 }, -1, (DialogInterface.OnClickListener)localObject).d(false).c();
    }
    hl.a(a).u();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */