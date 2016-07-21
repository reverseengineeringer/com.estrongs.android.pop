package com.dianxinos.lockscreen.ui;

import com.nineoldandroids.a.ac;
import com.nineoldandroids.a.aj;

class r
  implements aj
{
  r(SlideUnlockHintView paramSlideUnlockHintView) {}
  
  public void a(ac paramac)
  {
    if (SlideUnlockHintView.a(a) == null) {
      return;
    }
    float f = ((Float)paramac.l()).floatValue();
    SlideUnlockHintView.a(a, f);
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ui.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */