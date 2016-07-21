package com.estrongs.android.ui.controller;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.estrongs.android.pop.utils.cu;

class j
  extends LinearLayout
{
  j(i parami, Context paramContext)
  {
    super(paramContext);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(cu.e(a.a.a), View.MeasureSpec.getMode(paramInt1)), View.MeasureSpec.makeMeasureSpec(h.e(a.a).getMeasuredHeight(), View.MeasureSpec.getMode(paramInt1)));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */