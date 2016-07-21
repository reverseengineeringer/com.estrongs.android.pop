package android.support.v7.widget;

import android.os.Bundle;
import android.support.v4.view.a;
import android.support.v4.view.a.g;
import android.view.View;

class RecyclerViewAccessibilityDelegate$1
  extends a
{
  RecyclerViewAccessibilityDelegate$1(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate) {}
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramg);
    if ((!RecyclerViewAccessibilityDelegate.access$000(this$0)) && (this$0.mRecyclerView.getLayoutManager() != null)) {
      this$0.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(paramView, paramg);
    }
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!RecyclerViewAccessibilityDelegate.access$000(this$0)) && (this$0.mRecyclerView.getLayoutManager() != null)) {
      return this$0.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(paramView, paramInt, paramBundle);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerViewAccessibilityDelegate.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */