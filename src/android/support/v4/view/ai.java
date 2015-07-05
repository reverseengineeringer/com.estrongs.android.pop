package android.support.v4.view;

import android.database.DataSetObserver;

class ai
  extends DataSetObserver
  implements bx, by
{
  private int b;
  
  private ai(PagerTitleStrip paramPagerTitleStrip) {}
  
  public void a(int paramInt)
  {
    float f = 0.0F;
    if (b == 0)
    {
      a.a(a.a.c(), a.a.b());
      if (PagerTitleStrip.a(a) >= 0.0F) {
        f = PagerTitleStrip.a(a);
      }
      a.a(a.a.c(), f, true);
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    paramInt2 = paramInt1;
    if (paramFloat > 0.5F) {
      paramInt2 = paramInt1 + 1;
    }
    a.a(paramInt2, paramFloat, false);
  }
  
  public void b(int paramInt)
  {
    b = paramInt;
  }
  
  public void onChanged()
  {
    float f = 0.0F;
    a.a(a.a.c(), a.a.b());
    if (PagerTitleStrip.a(a) >= 0.0F) {
      f = PagerTitleStrip.a(a);
    }
    a.a(a.a.c(), f, true);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */