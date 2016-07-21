package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.a.a.p;
import com.estrongs.android.ui.dialog.eu;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.util.r;
import com.estrongs.fs.b.at;
import com.estrongs.fs.h;
import com.estrongs.fs.w;

final class ap
  implements eu
{
  ap(h paramh, Activity paramActivity, String paramString) {}
  
  public boolean a(String paramString)
  {
    if (!r.a(a.getFileType().a(), a.getAbsolutePath(), paramString)) {
      return false;
    }
    at localat = new at(b, a, paramString, c);
    Object localObject = new aq(this);
    localat.setDescription(b.getString(2131230881));
    localat.addTaskStatusChangeListener((p)localObject);
    localObject = a.getAbsolutePath();
    new StringBuilder().append(com.estrongs.android.util.ap.e((String)localObject)).append("/").append(paramString).toString();
    localat.addPostListener(new as(this, (String)localObject));
    new jh(b, b.getString(2131232188), localat).b(false).show();
    localat.execute();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */