package com.estrongs.android.appinfo;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.b.c;

class a
  extends c<String, Drawable>
{
  a(AppFolderInfoManager paramAppFolderInfoManager, int paramInt)
  {
    super(paramInt);
  }
  
  protected void a(boolean paramBoolean, String paramString, Drawable paramDrawable1, Drawable paramDrawable2)
  {
    super.a(paramBoolean, paramString, paramDrawable1, paramDrawable2);
    if ((paramDrawable1 instanceof BitmapDrawable))
    {
      paramString = ((BitmapDrawable)paramDrawable1).getBitmap();
      if (paramString != null) {
        paramString.recycle();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */