package android.support.v4.a;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

public class a
{
  public static <T> Parcelable.Creator<T> a(c<T> paramc)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      e.a(paramc);
    }
    return new b(paramc);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */