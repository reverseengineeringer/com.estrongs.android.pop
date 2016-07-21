package android.support.v4.b.a;

import android.graphics.drawable.Drawable;

class o
{
  public static void a(Drawable paramDrawable, boolean paramBoolean)
  {
    paramDrawable.setAutoMirrored(paramBoolean);
  }
  
  public static boolean a(Drawable paramDrawable)
  {
    return paramDrawable.isAutoMirrored();
  }
  
  public static Drawable b(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof y)) {
      localObject = new y(paramDrawable);
    }
    return (Drawable)localObject;
  }
  
  public static int c(Drawable paramDrawable)
  {
    return paramDrawable.getAlpha();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.b.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */