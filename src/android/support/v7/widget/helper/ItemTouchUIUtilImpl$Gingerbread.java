package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v7.widget.RecyclerView;
import android.view.View;

class ItemTouchUIUtilImpl$Gingerbread
  implements ItemTouchUIUtil
{
  private void draw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2)
  {
    paramCanvas.save();
    paramCanvas.translate(paramFloat1, paramFloat2);
    paramRecyclerView.drawChild(paramCanvas, paramView, 0L);
    paramCanvas.restore();
  }
  
  public void clearView(View paramView)
  {
    paramView.setVisibility(0);
  }
  
  public void onDraw(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
  {
    if (paramInt != 2) {
      draw(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2);
    }
  }
  
  public void onDrawOver(Canvas paramCanvas, RecyclerView paramRecyclerView, View paramView, float paramFloat1, float paramFloat2, int paramInt, boolean paramBoolean)
  {
    if (paramInt == 2) {
      draw(paramCanvas, paramRecyclerView, paramView, paramFloat1, paramFloat2);
    }
  }
  
  public void onSelected(View paramView)
  {
    paramView.setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchUIUtilImpl.Gingerbread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */