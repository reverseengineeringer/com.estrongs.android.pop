package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class StaggeredGridLayoutManager$LazySpanLookup
{
  private static final int MIN_SIZE = 10;
  int[] mData;
  List<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> mFullSpanItems;
  
  private int invalidateFullSpansAfter(int paramInt)
  {
    if (mFullSpanItems == null) {
      return -1;
    }
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = getFullSpanItem(paramInt);
    if (localFullSpanItem != null) {
      mFullSpanItems.remove(localFullSpanItem);
    }
    int j = mFullSpanItems.size();
    int i = 0;
    if (i < j) {
      if (mFullSpanItems.get(i)).mPosition < paramInt) {}
    }
    for (;;)
    {
      if (i != -1)
      {
        localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)mFullSpanItems.get(i);
        mFullSpanItems.remove(i);
        return mPosition;
        i += 1;
        break;
      }
      return -1;
      i = -1;
    }
  }
  
  private void offsetFullSpansForAddition(int paramInt1, int paramInt2)
  {
    if (mFullSpanItems == null) {
      return;
    }
    int i = mFullSpanItems.size() - 1;
    label20:
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    if (i >= 0)
    {
      localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)mFullSpanItems.get(i);
      if (mPosition >= paramInt1) {
        break label55;
      }
    }
    for (;;)
    {
      i -= 1;
      break label20;
      break;
      label55:
      mPosition += paramInt2;
    }
  }
  
  private void offsetFullSpansForRemoval(int paramInt1, int paramInt2)
  {
    if (mFullSpanItems == null) {
      return;
    }
    int i = mFullSpanItems.size() - 1;
    label20:
    StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem;
    if (i >= 0)
    {
      localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)mFullSpanItems.get(i);
      if (mPosition >= paramInt1) {
        break label55;
      }
    }
    for (;;)
    {
      i -= 1;
      break label20;
      break;
      label55:
      if (mPosition < paramInt1 + paramInt2) {
        mFullSpanItems.remove(i);
      } else {
        mPosition -= paramInt2;
      }
    }
  }
  
  public void addFullSpanItem(StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem paramFullSpanItem)
  {
    if (mFullSpanItems == null) {
      mFullSpanItems = new ArrayList();
    }
    int j = mFullSpanItems.size();
    int i = 0;
    while (i < j)
    {
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)mFullSpanItems.get(i);
      if (mPosition == mPosition) {
        mFullSpanItems.remove(i);
      }
      if (mPosition >= mPosition)
      {
        mFullSpanItems.add(i, paramFullSpanItem);
        return;
      }
      i += 1;
    }
    mFullSpanItems.add(paramFullSpanItem);
  }
  
  void clear()
  {
    if (mData != null) {
      Arrays.fill(mData, -1);
    }
    mFullSpanItems = null;
  }
  
  void ensureSize(int paramInt)
  {
    if (mData == null)
    {
      mData = new int[Math.max(paramInt, 10) + 1];
      Arrays.fill(mData, -1);
    }
    while (paramInt < mData.length) {
      return;
    }
    int[] arrayOfInt = mData;
    mData = new int[sizeForPosition(paramInt)];
    System.arraycopy(arrayOfInt, 0, mData, 0, arrayOfInt.length);
    Arrays.fill(mData, arrayOfInt.length, mData.length, -1);
  }
  
  int forceInvalidateAfter(int paramInt)
  {
    if (mFullSpanItems != null)
    {
      int i = mFullSpanItems.size() - 1;
      while (i >= 0)
      {
        if (mFullSpanItems.get(i)).mPosition >= paramInt) {
          mFullSpanItems.remove(i);
        }
        i -= 1;
      }
    }
    return invalidateAfter(paramInt);
  }
  
  public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem getFirstFullSpanItemInRange(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    Object localObject;
    if (mFullSpanItems == null)
    {
      localObject = null;
      return (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject;
    }
    int j = mFullSpanItems.size();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label117;
      }
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)mFullSpanItems.get(i);
      if (mPosition >= paramInt2) {
        return null;
      }
      if (mPosition >= paramInt1)
      {
        localObject = localFullSpanItem;
        if (paramInt3 == 0) {
          break;
        }
        localObject = localFullSpanItem;
        if (mGapDir == paramInt3) {
          break;
        }
        if (paramBoolean)
        {
          localObject = localFullSpanItem;
          if (mHasUnwantedGapAfter) {
            break;
          }
        }
      }
      i += 1;
    }
    label117:
    return null;
  }
  
  public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem getFullSpanItem(int paramInt)
  {
    Object localObject;
    if (mFullSpanItems == null)
    {
      localObject = null;
      return (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject;
    }
    int i = mFullSpanItems.size() - 1;
    for (;;)
    {
      if (i < 0) {
        break label61;
      }
      StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem localFullSpanItem = (StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)mFullSpanItems.get(i);
      localObject = localFullSpanItem;
      if (mPosition == paramInt) {
        break;
      }
      i -= 1;
    }
    label61:
    return null;
  }
  
  int getSpan(int paramInt)
  {
    if ((mData == null) || (paramInt >= mData.length)) {
      return -1;
    }
    return mData[paramInt];
  }
  
  int invalidateAfter(int paramInt)
  {
    if (mData == null) {}
    while (paramInt >= mData.length) {
      return -1;
    }
    int i = invalidateFullSpansAfter(paramInt);
    if (i == -1)
    {
      Arrays.fill(mData, paramInt, mData.length, -1);
      return mData.length;
    }
    Arrays.fill(mData, paramInt, i + 1, -1);
    return i + 1;
  }
  
  void offsetForAddition(int paramInt1, int paramInt2)
  {
    if ((mData == null) || (paramInt1 >= mData.length)) {
      return;
    }
    ensureSize(paramInt1 + paramInt2);
    System.arraycopy(mData, paramInt1, mData, paramInt1 + paramInt2, mData.length - paramInt1 - paramInt2);
    Arrays.fill(mData, paramInt1, paramInt1 + paramInt2, -1);
    offsetFullSpansForAddition(paramInt1, paramInt2);
  }
  
  void offsetForRemoval(int paramInt1, int paramInt2)
  {
    if ((mData == null) || (paramInt1 >= mData.length)) {
      return;
    }
    ensureSize(paramInt1 + paramInt2);
    System.arraycopy(mData, paramInt1 + paramInt2, mData, paramInt1, mData.length - paramInt1 - paramInt2);
    Arrays.fill(mData, mData.length - paramInt2, mData.length, -1);
    offsetFullSpansForRemoval(paramInt1, paramInt2);
  }
  
  void setSpan(int paramInt, StaggeredGridLayoutManager.Span paramSpan)
  {
    ensureSize(paramInt);
    mData[paramInt] = mIndex;
  }
  
  int sizeForPosition(int paramInt)
  {
    int i = mData.length;
    while (i <= paramInt) {
      i *= 2;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */