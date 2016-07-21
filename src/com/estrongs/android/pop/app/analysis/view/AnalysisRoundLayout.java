package com.estrongs.android.pop.app.analysis.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.estrongs.android.ui.d.g;

public class AnalysisRoundLayout
  extends LinearLayout
{
  private Bitmap a;
  private RectF b;
  private Paint c;
  private int d;
  
  public AnalysisRoundLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AnalysisRoundLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    c = new Paint();
    c.setAntiAlias(true);
    d = g.a(getContext(), 3.0F);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    Bitmap localBitmap = a;
    a = Bitmap.createBitmap((int)b.width(), (int)b.height(), Bitmap.Config.ARGB_4444);
    super.dispatchDraw(new Canvas(a));
    c.setShader(new BitmapShader(a, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
    paramCanvas.drawRoundRect(b, d, d, c);
    if ((localBitmap != null) && (!localBitmap.isRecycled())) {
      localBitmap.recycle();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((a != null) && (!a.isRecycled())) {
      a.recycle();
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      b = new RectF(0.0F, 0.0F, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.view.AnalysisRoundLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */