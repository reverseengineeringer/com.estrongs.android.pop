package com.estrongs.android.ui.e;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.utils.cu;

public abstract class ki
  extends ka
{
  public ki(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
  }
  
  protected void b()
  {
    c = new kj(this, b);
    Object localObject = new Rect();
    ((Activity)b).getWindow().getDecorView().getWindowVisibleDisplayFrame((Rect)localObject);
    int i = top;
    d = new WindowManager.LayoutParams();
    d.width = -1;
    d.height = (cu.f(b) - i);
    d.format = -2;
    d.y = i;
    c.setVisibility(8);
    c.setBackgroundDrawable(null);
    c.setOnClickListener(new kk(this));
    localObject = new LinearLayout.LayoutParams(-2, -2);
    e = new kl(this, b, f);
    c.setGravity(53);
    if ((b instanceof jz))
    {
      Rect localRect = ((jz)b).y();
      if (localRect != null)
      {
        topMargin = b.getResources().getDimensionPixelSize(2131165308);
        height = (localRect.height() - topMargin - b.getResources().getDimensionPixelSize(2131165255));
        rightMargin = b.getResources().getDimensionPixelSize(2131165304);
      }
    }
    c.addView(e.a(), (ViewGroup.LayoutParams)localObject);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */