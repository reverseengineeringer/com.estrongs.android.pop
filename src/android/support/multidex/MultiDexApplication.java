package android.support.multidex;

import android.app.Application;
import android.content.Context;

public class MultiDexApplication
  extends Application
{
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    a.a(this);
  }
}

/* Location:
 * Qualified Name:     android.support.multidex.MultiDexApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */