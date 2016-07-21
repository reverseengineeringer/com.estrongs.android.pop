package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.TextView;

public final class cn
{
  static final ct a = new cp();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new co();
      return;
    }
    if (i >= 18)
    {
      a = new cr();
      return;
    }
    if (i >= 17)
    {
      a = new cq();
      return;
    }
    if (i >= 16)
    {
      a = new cs();
      return;
    }
  }
  
  public static int a(TextView paramTextView)
  {
    return a.a(paramTextView);
  }
  
  public static void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    a.a(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */