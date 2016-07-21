package android.support.v4.widget;

import android.os.Build.VERSION;
import android.widget.ListView;

public final class aq
{
  public static void a(ListView paramListView, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      as.a(paramListView, paramInt);
      return;
    }
    ar.a(paramListView, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */