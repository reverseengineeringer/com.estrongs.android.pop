package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.support.v7.graphics.drawable.DrawerArrowDrawable;

class ActionBarDrawerToggle$DrawerArrowDrawableToggle
  extends DrawerArrowDrawable
  implements ActionBarDrawerToggle.DrawerToggle
{
  private final Activity mActivity;
  
  public ActionBarDrawerToggle$DrawerArrowDrawableToggle(Activity paramActivity, Context paramContext)
  {
    super(paramContext);
    mActivity = paramActivity;
  }
  
  public float getPosition()
  {
    return getProgress();
  }
  
  public void setPosition(float paramFloat)
  {
    if (paramFloat == 1.0F) {
      setVerticalMirror(true);
    }
    for (;;)
    {
      setProgress(paramFloat);
      return;
      if (paramFloat == 0.0F) {
        setVerticalMirror(false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ActionBarDrawerToggle.DrawerArrowDrawableToggle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */