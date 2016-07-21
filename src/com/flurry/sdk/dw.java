package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.InputStream;
import java.io.OutputStream;

public class dw
  implements lb<Bitmap>
{
  public Bitmap a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    return BitmapFactory.decodeStream(paramInputStream);
  }
  
  public void a(OutputStream paramOutputStream, Bitmap paramBitmap)
  {
    if ((paramOutputStream == null) || (paramBitmap == null)) {
      return;
    }
    throw new UnsupportedOperationException("Serialization for bitmaps is not yet implemented");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */