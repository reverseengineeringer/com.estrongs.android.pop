package com.dianxinos.lockscreen.ui;

import android.graphics.PointF;
import android.graphics.drawable.Drawable;

class g
{
  Drawable a;
  PointF b = new PointF();
  PointF c = new PointF();
  long d;
  
  g(ChargeCleanView paramChargeCleanView) {}
  
  PointF a()
  {
    double d1 = d();
    float f1 = (float)(b.x + (ae).x - b.x) * d1);
    double d2 = b.y;
    float f2 = (float)(d1 * (ae).y - b.y) + d2);
    c.set(f1, f2);
    return c;
  }
  
  float b()
  {
    return (float)(1.0D - d());
  }
  
  float c()
  {
    return (float)(360.0D * d());
  }
  
  double d()
  {
    float f1 = 0.0F;
    float f2 = (float)(ChargeCleanView.b(e) - d) / 800.0F;
    if (f2 < 0.0F) {}
    for (;;)
    {
      return f1;
      if (f2 <= 1.0F) {
        f1 = f2;
      } else {
        f1 = 1.0F;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */