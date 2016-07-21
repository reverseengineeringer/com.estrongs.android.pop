package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;

class TintInfo
{
  public boolean mHasTintList;
  public boolean mHasTintMode;
  public ColorStateList mTintList;
  public PorterDuff.Mode mTintMode;
  
  void clear()
  {
    mTintList = null;
    mHasTintList = false;
    mTintMode = null;
    mHasTintMode = false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.TintInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */