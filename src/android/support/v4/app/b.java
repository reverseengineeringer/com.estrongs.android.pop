package android.support.v4.app;

import android.app.Activity;
import android.content.pm.PackageManager;

final class b
  implements Runnable
{
  b(String[] paramArrayOfString, Activity paramActivity, int paramInt) {}
  
  public void run()
  {
    int[] arrayOfInt = new int[a.length];
    PackageManager localPackageManager = b.getPackageManager();
    String str = b.getPackageName();
    int j = a.length;
    int i = 0;
    while (i < j)
    {
      arrayOfInt[i] = localPackageManager.checkPermission(a[i], str);
      i += 1;
    }
    ((c)b).onRequestPermissionsResult(c, a, arrayOfInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */