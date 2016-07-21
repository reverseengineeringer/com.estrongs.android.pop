package com.flurry.sdk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.widget.ImageButton;
import android.widget.RelativeLayout.LayoutParams;

public class ci
  extends ImageButton
{
  public boolean a = false;
  public boolean b = false;
  public boolean c = false;
  
  public ci(Context paramContext)
  {
    super(paramContext);
  }
  
  public void a()
  {
    hc localhc = new hc();
    localhc.x();
    setFlurryMraidImageBitmap(localhc.h());
    setBackgroundColor(0);
  }
  
  public void b()
  {
    a();
    a = true;
  }
  
  public void setDefaultLayoutParams(RelativeLayout.LayoutParams paramLayoutParams)
  {
    float f = getResourcesgetDisplayMetricsdensity;
    paramLayoutParams.setMargins(0, (int)(10.0F * f), (int)(10.0F * f), 0);
    int i = (int)(50.0F * f);
    int j = (int)(f * 50.0F);
    height = i;
    width = j;
    setLayoutParams(paramLayoutParams);
    a = true;
    b();
  }
  
  public void setFlurryBackgroundColor(int paramInt)
  {
    setBackgroundColor(paramInt);
    b = true;
  }
  
  public void setFlurryMraidImageBitmap(Bitmap paramBitmap)
  {
    setImageBitmap(paramBitmap);
    c = true;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */