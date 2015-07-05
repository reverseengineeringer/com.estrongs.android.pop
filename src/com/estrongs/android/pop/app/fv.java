package com.estrongs.android.pop.app;

import android.content.Context;
import android.graphics.Canvas;
import android.util.Log;
import android.widget.FrameLayout;

class fv
  extends FrameLayout
{
  private boolean b = true;
  
  fv(PopAudioPlayer paramPopAudioPlayer, Context paramContext)
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
        post(new fw(this));
        b = false;
      }
      return;
    }
    catch (Throwable paramCanvas)
    {
      for (;;)
      {
        Log.w("FileExplorerActivity", "containerEsFrameLayout.draw() catchs " + paramCanvas.getMessage());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */