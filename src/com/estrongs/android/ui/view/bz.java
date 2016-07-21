package com.estrongs.android.ui.view;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.ImageView;

class bz
  implements View.OnFocusChangeListener
{
  bz(PopMultiWindowGrid paramPopMultiWindowGrid) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramView = new ColorMatrix();
      paramView.setSaturation(0.2F);
      float[] arrayOfFloat = paramView.getArray();
      float f = -77;
      arrayOfFloat[14] = f;
      arrayOfFloat[9] = f;
      arrayOfFloat[4] = f;
      paramView.set(arrayOfFloat);
      PopMultiWindowGrid.a(a).setColorFilter(new ColorMatrixColorFilter(paramView));
      return;
    }
    PopMultiWindowGrid.a(a).clearColorFilter();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */