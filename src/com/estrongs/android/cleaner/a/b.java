package com.estrongs.android.cleaner.a;

import android.app.ActivityManager;
import android.content.pm.PackageManager;
import com.estrongs.android.cleaner.e;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.l;
import java.util.HashMap;
import java.util.Map;

class b
  implements Runnable
{
  b(a parama) {}
  
  public void run()
  {
    l.e("Memory", "Memory start scan...");
    a.a(a, true);
    ActivityManager localActivityManager = (ActivityManager)FexApplication.a().getSystemService("activity");
    PackageManager localPackageManager = FexApplication.a().getPackageManager();
    HashMap localHashMap = new HashMap();
    a.a(a, localActivityManager, localPackageManager, localHashMap);
    a.b(a, localActivityManager, localPackageManager, localHashMap);
    a.a(a, localActivityManager, localHashMap);
    if (a.a(a) != null) {
      a.a(a).b(a.b(a));
    }
    a.a(a, false);
    l.e("Memory", "Memory finish scan!");
    localHashMap.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */