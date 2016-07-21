package com.estrongs.android.pop.app;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.FrameLayout;
import com.estrongs.android.util.l;

class ej
  extends FrameLayout
{
  private boolean b = true;
  
  ej(PopAudioPlayer paramPopAudioPlayer, Context paramContext)
  {
    super(paramContext);
  }
  
  public void draw(Canvas paramCanvas)
  {
    try
    {
      super.draw(paramCanvas);
      if (b)
      {
        post(new ek(this));
        b = false;
      }
      return;
    }
    catch (Throwable paramCanvas)
    {
      for (;;)
      {
        l.d("FileExplorerActivity", "containerEsFrameLayout.draw() catchs " + paramCanvas.getMessage());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */