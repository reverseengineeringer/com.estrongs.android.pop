package com.estrongs.android.b.a.b;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;

class e
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  e(d paramd, Drawable paramDrawable, ImageView paramImageView) {}
  
  public void onGlobalLayout()
  {
    int i = (int)(a.getIntrinsicHeight() / a.getIntrinsicWidth() * b.getWidth());
    ViewGroup.LayoutParams localLayoutParams = b.getLayoutParams();
    height = i;
    b.setLayoutParams(localLayoutParams);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */