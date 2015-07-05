package com.estrongs.android.pop.utils;

import android.app.Activity;
import com.estrongs.android.ui.dialog.er;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.util.p;
import com.estrongs.fs.b.ar;
import com.estrongs.fs.h;
import com.estrongs.fs.m;

final class ak
  implements er
{
  ak(h paramh, Activity paramActivity, String paramString) {}
  
  public boolean a(String paramString)
  {
    if (!p.a(a.getFileType().a(), a.getAbsolutePath(), paramString)) {
      return false;
    }
    paramString = new ar(b, a, paramString, c);
    al localal = new al(this);
    paramString.setDescription(b.getString(2131427355));
    paramString.addTaskStatusChangeListener(localal);
    new ix(b, b.getString(2131428292), paramString).b(false).show();
    paramString.execute();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */