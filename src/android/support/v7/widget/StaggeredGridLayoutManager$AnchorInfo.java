package android.support.v7.widget;

class StaggeredGridLayoutManager$AnchorInfo
{
  boolean mInvalidateOffsets;
  boolean mLayoutFromEnd;
  int mOffset;
  int mPosition;
  
  private StaggeredGridLayoutManager$AnchorInfo(StaggeredGridLayoutManager paramStaggeredGridLayoutManager) {}
  
  void assignCoordinateFromPadding()
  {
    if (mLayoutFromEnd) {}
    for (int i = this$0.mPrimaryOrientation.getEndAfterPadding();; i = this$0.mPrimaryOrientation.getStartAfterPadding())
    {
      mOffset = i;
      return;
    }
  }
  
  void assignCoordinateFromPadding(int paramInt)
  {
    if (mLayoutFromEnd)
    {
      mOffset = (this$0.mPrimaryOrientation.getEndAfterPadding() - paramInt);
      return;
    }
    mOffset = (this$0.mPrimaryOrientation.getStartAfterPadding() + paramInt);
  }
  
  void reset()
  {
    mPosition = -1;
    mOffset = Integer.MIN_VALUE;
    mLayoutFromEnd = false;
    mInvalidateOffsets = false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.AnchorInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */