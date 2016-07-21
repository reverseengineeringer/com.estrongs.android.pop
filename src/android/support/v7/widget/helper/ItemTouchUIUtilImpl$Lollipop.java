package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.cn;
import android.support.v7.recyclerview.R.id;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class ItemTouchUIUtilImpl$Lollipop
  extends ItemTouchUIUtilImpl.Honeycomb
{
  private float findMaxElevation(RecyclerView paramRecyclerView, View paramView)
  {
    int j = paramRecyclerView.getChildCount();
    int i = 0;
    float f1 = 0.0F;
    if (i < j)
    {
      View localView = paramRecyclerView.getChildAt(i);
      float f2;
      if (localView == paramView) {
        f2 = f1;
      }
      for (;;)
      {
        i += 1;
        f1 = f2;
        break;
        float f3 = cn.w(localView);
        f2 = f1;
        if (f3 > f1) {
          f2 = f3;
        }
      }
    }
    return f1;
  }
  
  public void clearView(View paramView)
  {
    Object localObject = paramView.getTag(R.id.item_touch_helper_previous_elevation);
    if ((localObject != null) && ((localObject instanceof Float))) {
      cn.l(paramView, ((Float)localObject).floatValue());
    }
    paramView.setTag(R.id.item_touch_helper_previous_elevation, null);
    super.clearView(paramView);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramView.getTag(R.id.item_touch_helper_previous_elevation) == null))
    {
      float f = cn.w(paramView);
      cn.l(paramView, 1.0F + findMaxElevation(paramRecyclerView, paramView));
      paramView.setTag(R.id.item_touch_helper_previous_elevation, Float.valueOf(f));
    }
    super.onDraw(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2, paramInt, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchUIUtilImpl.Lollipop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */