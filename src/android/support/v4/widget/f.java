package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public class f
{
  private static final i b = new g();
  private Object a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      b = new h();
      return;
    }
  }
  
  public f(Context paramContext)
  {
    a = b.a(paramContext);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    b.a(a, paramInt1, paramInt2);
  }
  
  public boolean a()
  {
    return b.a(a);
  }
  
  public boolean a(float paramFloat)
  {
    return b.a(a, paramFloat);
  }
  
  public boolean a(Canvas paramCanvas)
  {
    return b.a(a, paramCanvas);
  }
  
  public void b()
  {
    b.b(a);
  }
  
  public boolean c()
  {
    return b.c(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */