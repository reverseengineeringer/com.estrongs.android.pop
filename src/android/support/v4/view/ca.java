package android.support.v4.view;

import android.database.DataSetObserver;

class ca
  extends DataSetObserver
  implements ek, el
{
  private int b;
  
  private ca(PagerTitleStrip paramPagerTitleStrip) {}
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    paramInt2 = paramInt1;
    if (paramFloat > 0.5F) {
      paramInt2 = paramInt1 + 1;
    }
    a.a(paramInt2, paramFloat, false);
  }
  
  public void a(bw parambw1, bw parambw2)
  {
    a.a(parambw1, parambw2);
  }
  
  public void b(int paramInt)
  {
    float f = 0.0F;
    if (b == 0)
    {
      a.a(a.a.getCurrentItem(), a.a.getAdapter());
      if (PagerTitleStrip.a(a) >= 0.0F) {
        f = PagerTitleStrip.a(a);
      }
      a.a(a.a.getCurrentItem(), f, true);
    }
  }
  
  public void onChanged()
  {
    float f = 0.0F;
    a.a(a.a.getCurrentItem(), a.a.getAdapter());
    if (PagerTitleStrip.a(a) >= 0.0F) {
      f = PagerTitleStrip.a(a);
    }
    a.a(a.a.getCurrentItem(), f, true);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */