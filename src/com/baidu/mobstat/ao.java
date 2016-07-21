package com.baidu.mobstat;

import android.content.Context;
import android.content.Intent;

 enum ao
{
  ao(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public void a(Context paramContext)
  {
    if (!as.a(paramContext).b(paramContext)) {
      return;
    }
    try
    {
      Intent localIntent = new Intent(paramContext, Class.forName("com.baidu.bottom.service.BottomService"));
      localIntent.putExtra("SDK_PRODUCT_LY", "MS");
      paramContext.startService(localIntent);
      return;
    }
    catch (Throwable paramContext)
    {
      cr.b(paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */