package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;

class StaggeredGridLayoutManager$2
  extends LinearSmoothScroller
{
  StaggeredGridLayoutManager$2(StaggeredGridLayoutManager paramStaggeredGridLayoutManager, Context paramContext)
  {
    super(paramContext);
  }
  
  public PointF computeScrollVectorForPosition(int paramInt)
  {
    paramInt = StaggeredGridLayoutManager.access$400(this$0, paramInt);
    if (paramInt == 0) {
      return null;
    }
    if (StaggeredGridLayoutManager.access$500(this$0) == 0) {
      return new PointF(paramInt, 0.0F);
    }
    return new PointF(0.0F, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */