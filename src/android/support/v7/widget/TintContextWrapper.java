package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class TintContextWrapper
  extends ContextWrapper
{
  private static final ArrayList<WeakReference<TintContextWrapper>> sCache = new ArrayList();
  private Resources mResources;
  private final Resources.Theme mTheme = getResources().newTheme();
  
  private TintContextWrapper(Context paramContext)
  {
    super(paramContext);
    mTheme.setTo(paramContext.getTheme());
  }
  
  private static boolean shouldWrap(Context paramContext)
  {
    if ((paramContext instanceof TintContextWrapper)) {}
    while ((paramContext.getResources() instanceof TintResources)) {
      return false;
    }
    return true;
  }
  
  public static Context wrap(Context paramContext)
  {
    Object localObject = paramContext;
    int j;
    int i;
    if (shouldWrap(paramContext))
    {
      j = sCache.size();
      i = 0;
    }
    while (i < j)
    {
      localObject = (WeakReference)sCache.get(i);
      if (localObject != null) {}
      for (localObject = (TintContextWrapper)((WeakReference)localObject).get(); (localObject != null) && (((TintContextWrapper)localObject).getBaseContext() == paramContext); localObject = null) {
        return (Context)localObject;
      }
      i += 1;
    }
    paramContext = new TintContextWrapper(paramContext);
    sCache.add(new WeakReference(paramContext));
    return paramContext;
  }
  
  public Resources getResources()
  {
    if (mResources == null) {
      mResources = new TintResources(this, super.getResources());
    }
    return mResources;
  }
  
  public Resources.Theme getTheme()
  {
    return mTheme;
  }
  
  public void setTheme(int paramInt)
  {
    mTheme.applyStyle(paramInt, true);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.TintContextWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */