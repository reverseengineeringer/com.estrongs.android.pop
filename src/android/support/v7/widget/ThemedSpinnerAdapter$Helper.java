package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.support.v7.view.ContextThemeWrapper;
import android.view.LayoutInflater;

public final class ThemedSpinnerAdapter$Helper
{
  private final Context mContext;
  private LayoutInflater mDropDownInflater;
  private final LayoutInflater mInflater;
  
  public ThemedSpinnerAdapter$Helper(Context paramContext)
  {
    mContext = paramContext;
    mInflater = LayoutInflater.from(paramContext);
  }
  
  public LayoutInflater getDropDownViewInflater()
  {
    if (mDropDownInflater != null) {
      return mDropDownInflater;
    }
    return mInflater;
  }
  
  public Resources.Theme getDropDownViewTheme()
  {
    if (mDropDownInflater == null) {
      return null;
    }
    return mDropDownInflater.getContext().getTheme();
  }
  
  public void setDropDownViewTheme(Resources.Theme paramTheme)
  {
    if (paramTheme == null)
    {
      mDropDownInflater = null;
      return;
    }
    if (paramTheme == mContext.getTheme())
    {
      mDropDownInflater = mInflater;
      return;
    }
    mDropDownInflater = LayoutInflater.from(new ContextThemeWrapper(mContext, paramTheme));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ThemedSpinnerAdapter.Helper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */