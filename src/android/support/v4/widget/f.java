package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.shapes.OvalShape;

class f
  extends OvalShape
{
  private RadialGradient b;
  private Paint c = new Paint();
  private int d;
  
  public f(e parame, int paramInt1, int paramInt2)
  {
    e.a(parame, paramInt1);
    d = paramInt2;
    float f1 = d / 2;
    float f2 = d / 2;
    float f3 = e.a(parame);
    parame = Shader.TileMode.CLAMP;
    b = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, parame);
    c.setShader(b);
  }
  
  public void draw(Canvas paramCanvas, Paint paramPaint)
  {
    int i = a.getWidth();
    int j = a.getHeight();
    paramCanvas.drawCircle(i / 2, j / 2, d / 2 + e.a(a), c);
    paramCanvas.drawCircle(i / 2, j / 2, d / 2, paramPaint);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */