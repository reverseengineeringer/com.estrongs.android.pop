package android.support.v7.util;

import android.util.Log;
import android.util.SparseIntArray;

public class AsyncListUtil<T>
{
  private static final boolean DEBUG = false;
  private static final String TAG = "AsyncListUtil";
  private boolean mAllowScrollHints;
  private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback = new AsyncListUtil.2(this);
  final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
  final AsyncListUtil.DataCallback<T> mDataCallback;
  int mDisplayedGeneration = 0;
  private int mItemCount = 0;
  private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback = new AsyncListUtil.1(this);
  final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
  private final SparseIntArray mMissingPositions = new SparseIntArray();
  final int[] mPrevRange = new int[2];
  int mRequestedGeneration = mDisplayedGeneration;
  private int mScrollHint = 0;
  final Class<T> mTClass;
  final TileList<T> mTileList;
  final int mTileSize;
  final int[] mTmpRange = new int[2];
  final int[] mTmpRangeExtended = new int[2];
  final AsyncListUtil.ViewCallback mViewCallback;
  
  public AsyncListUtil(Class<T> paramClass, int paramInt, AsyncListUtil.DataCallback<T> paramDataCallback, AsyncListUtil.ViewCallback paramViewCallback)
  {
    mTClass = paramClass;
    mTileSize = paramInt;
    mDataCallback = paramDataCallback;
    mViewCallback = paramViewCallback;
    mTileList = new TileList(mTileSize);
    paramClass = new MessageThreadUtil();
    mMainThreadProxy = paramClass.getMainThreadProxy(mMainThreadCallback);
    mBackgroundProxy = paramClass.getBackgroundProxy(mBackgroundCallback);
    refresh();
  }
  
  private boolean isRefreshPending()
  {
    return mRequestedGeneration != mDisplayedGeneration;
  }
  
  private void log(String paramString, Object... paramVarArgs)
  {
    Log.d("AsyncListUtil", "[MAIN] " + String.format(paramString, paramVarArgs));
  }
  
  private void updateRange()
  {
    mViewCallback.getItemRangeInto(mTmpRange);
    if ((mTmpRange[0] > mTmpRange[1]) || (mTmpRange[0] < 0)) {}
    while (mTmpRange[1] >= mItemCount) {
      return;
    }
    if (!mAllowScrollHints) {
      mScrollHint = 0;
    }
    for (;;)
    {
      mPrevRange[0] = mTmpRange[0];
      mPrevRange[1] = mTmpRange[1];
      mViewCallback.extendRangeInto(mTmpRange, mTmpRangeExtended, mScrollHint);
      mTmpRangeExtended[0] = Math.min(mTmpRange[0], Math.max(mTmpRangeExtended[0], 0));
      mTmpRangeExtended[1] = Math.max(mTmpRange[1], Math.min(mTmpRangeExtended[1], mItemCount - 1));
      mBackgroundProxy.updateRange(mTmpRange[0], mTmpRange[1], mTmpRangeExtended[0], mTmpRangeExtended[1], mScrollHint);
      return;
      if ((mTmpRange[0] > mPrevRange[1]) || (mPrevRange[0] > mTmpRange[1])) {
        mScrollHint = 0;
      } else if (mTmpRange[0] < mPrevRange[0]) {
        mScrollHint = 1;
      } else if (mTmpRange[0] > mPrevRange[0]) {
        mScrollHint = 2;
      }
    }
  }
  
  public T getItem(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= mItemCount)) {
      throw new IndexOutOfBoundsException(paramInt + " is not within 0 and " + mItemCount);
    }
    Object localObject = mTileList.getItemAt(paramInt);
    if ((localObject == null) && (!isRefreshPending())) {
      mMissingPositions.put(paramInt, 0);
    }
    return (T)localObject;
  }
  
  public int getItemCount()
  {
    return mItemCount;
  }
  
  public void onRangeChanged()
  {
    if (isRefreshPending()) {
      return;
    }
    updateRange();
    mAllowScrollHints = true;
  }
  
  public void refresh()
  {
    mMissingPositions.clear();
    ThreadUtil.BackgroundCallback localBackgroundCallback = mBackgroundProxy;
    int i = mRequestedGeneration + 1;
    mRequestedGeneration = i;
    localBackgroundCallback.refresh(i);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.AsyncListUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */