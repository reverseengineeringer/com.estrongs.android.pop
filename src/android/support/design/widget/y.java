package android.support.design.widget;

import android.support.v4.view.cn;
import android.view.View;
import java.util.Comparator;

class y
  implements Comparator<View>
{
  public int a(View paramView1, View paramView2)
  {
    float f1 = cn.I(paramView1);
    float f2 = cn.I(paramView2);
    if (f1 > f2) {
      return -1;
    }
    if (f1 < f2) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */