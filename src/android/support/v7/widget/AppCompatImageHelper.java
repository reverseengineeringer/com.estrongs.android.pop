package android.support.v7.widget;

import android.graphics.drawable.Drawable;
import android.support.v4.content.a;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class AppCompatImageHelper
{
  private final AppCompatDrawableManager mDrawableManager;
  private final ImageView mView;
  
  public AppCompatImageHelper(ImageView paramImageView, AppCompatDrawableManager paramAppCompatDrawableManager)
  {
    mView = paramImageView;
    mDrawableManager = paramAppCompatDrawableManager;
  }
  
  public void loadFromAttributes(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = TintTypedArray.obtainStyledAttributes(mView.getContext(), paramAttributeSet, R.styleable.AppCompatImageView, paramInt, 0);
    try
    {
      Drawable localDrawable = paramAttributeSet.getDrawableIfKnown(R.styleable.AppCompatImageView_android_src);
      if (localDrawable != null) {
        mView.setImageDrawable(localDrawable);
      }
      paramInt = paramAttributeSet.getResourceId(R.styleable.AppCompatImageView_srcCompat, -1);
      if (paramInt != -1)
      {
        localDrawable = mDrawableManager.getDrawable(mView.getContext(), paramInt);
        if (localDrawable != null) {
          mView.setImageDrawable(localDrawable);
        }
      }
      localDrawable = mView.getDrawable();
      if (localDrawable != null) {
        DrawableUtils.fixDrawable(localDrawable);
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  public void setImageResource(int paramInt)
  {
    if (paramInt != 0)
    {
      if (mDrawableManager != null) {}
      for (Drawable localDrawable = mDrawableManager.getDrawable(mView.getContext(), paramInt);; localDrawable = a.a(mView.getContext(), paramInt))
      {
        if (localDrawable != null) {
          DrawableUtils.fixDrawable(localDrawable);
        }
        mView.setImageDrawable(localDrawable);
        return;
      }
    }
    mView.setImageDrawable(null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatImageHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */