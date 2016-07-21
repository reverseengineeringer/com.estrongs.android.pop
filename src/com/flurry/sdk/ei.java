package com.flurry.sdk;

import android.graphics.Bitmap;
import android.widget.ImageView;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class ei
{
  private static ei b = null;
  private LinkedHashMap<String, Bitmap> a = null;
  
  public static ei a()
  {
    if (b == null) {
      b = new ei();
    }
    return b;
  }
  
  private void b(String paramString, ImageView paramImageView)
  {
    ep.a(paramString, new ei.1(this, paramString, paramImageView));
  }
  
  public void a(String paramString, Bitmap paramBitmap)
  {
    a.put(paramString, paramBitmap);
    if (a.size() > 7)
    {
      paramString = a.entrySet().iterator();
      if (paramString.hasNext())
      {
        paramString = (String)((Map.Entry)paramString.next()).getKey();
        a.remove(paramString);
      }
    }
  }
  
  public void a(String paramString, ImageView paramImageView)
  {
    if (a.get(paramString) != null)
    {
      paramImageView.setImageBitmap((Bitmap)a.get(paramString));
      return;
    }
    b(paramString, paramImageView);
  }
  
  public void b()
  {
    a.clear();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */