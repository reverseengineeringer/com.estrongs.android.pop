package android.support.v4.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.media.session.MediaController;

class e
{
  private static SharedElementCallback a(f paramf)
  {
    g localg = null;
    if (paramf != null) {
      localg = new g(paramf);
    }
    return localg;
  }
  
  public static void a(Activity paramActivity)
  {
    paramActivity.finishAfterTransition();
  }
  
  public static void a(Activity paramActivity, f paramf)
  {
    paramActivity.setEnterSharedElementCallback(a(paramf));
  }
  
  public static void a(Activity paramActivity, Object paramObject)
  {
    paramActivity.setMediaController((MediaController)paramObject);
  }
  
  public static void b(Activity paramActivity)
  {
    paramActivity.postponeEnterTransition();
  }
  
  public static void b(Activity paramActivity, f paramf)
  {
    paramActivity.setExitSharedElementCallback(a(paramf));
  }
  
  public static void c(Activity paramActivity)
  {
    paramActivity.startPostponedEnterTransition();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */