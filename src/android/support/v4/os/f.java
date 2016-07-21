package android.support.v4.os;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

public final class f
{
  public static <T> Parcelable.Creator<T> a(h<T> paramh)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return j.a(paramh);
    }
    return new g(paramh);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */