package android.support.v4.b.a;

import android.graphics.drawable.Drawable;

class m
{
  public static void a(Drawable paramDrawable)
  {
    paramDrawable.jumpToCurrentState();
  }
  
  public static Drawable b(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof w)) {
      localObject = new w(paramDrawable);
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.b.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */