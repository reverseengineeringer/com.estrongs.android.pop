package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

class k
{
  public static void a(Activity paramActivity)
  {
    paramActivity.finishAffinity();
  }
  
  public static void a(Activity paramActivity, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    paramActivity.startActivityForResult(paramIntent, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */