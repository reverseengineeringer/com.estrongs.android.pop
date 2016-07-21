package com.dianxinos.lockscreen.ad.extra;

import android.content.Context;
import com.duapps.ad.base.l;
import com.duapps.ad.c;

public class b
{
  public static BaseCardView a(Context paramContext, ADCardController.ADCardType paramADCardType, c paramc, boolean paramBoolean)
  {
    l.c("BaseCardView", "createAdCard -> " + paramADCardType);
    if ((paramContext == null) || (paramc == null)) {}
    while (paramADCardType != ADCardController.ADCardType.SCREENLOCKBIGCARD) {
      return null;
    }
    return new g(paramContext, paramc);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.extra.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */