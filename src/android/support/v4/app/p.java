package android.support.v4.app;

import android.app.AppOpsManager;
import android.content.Context;

class p
{
  public static int a(Context paramContext, String paramString1, String paramString2)
  {
    return ((AppOpsManager)paramContext.getSystemService(AppOpsManager.class)).noteProxyOp(paramString1, paramString2);
  }
  
  public static String a(String paramString)
  {
    return AppOpsManager.permissionToOp(paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */