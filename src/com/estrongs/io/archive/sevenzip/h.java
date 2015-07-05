package com.estrongs.io.archive.sevenzip;

import android.app.Activity;
import android.os.ConditionVariable;
import com.estrongs.android.ui.dialog.ct;
import java.io.File;

final class h
  implements Runnable
{
  h(boolean[] paramArrayOfBoolean1, Activity paramActivity, String paramString1, File paramFile1, File paramFile2, String paramString2, String paramString3, ConditionVariable paramConditionVariable, boolean[] paramArrayOfBoolean2, Runnable paramRunnable, boolean paramBoolean, boolean[] paramArrayOfBoolean3) {}
  
  public void run()
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = null;
    if (a[0] != 0) {
      arrayOfString[0] = b.getString(2131427729, new Object[] { c });
    }
    for (String str = b.getString(2131427730, new Object[] { c });; str = b.getString(2131427725, new Object[] { c }))
    {
      new ct(b).a(arrayOfString[0]).b(str).b(2131427339, new j(this, arrayOfString)).c(2131427340, new i(this)).c();
      return;
      arrayOfString[0] = b.getString(2131427724, new Object[] { c });
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */