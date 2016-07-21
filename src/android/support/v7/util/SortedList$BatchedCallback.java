package android.support.v7.util;

public class SortedList$BatchedCallback<T2>
  extends SortedList.Callback<T2>
{
  static final int TYPE_ADD = 1;
  static final int TYPE_CHANGE = 3;
  static final int TYPE_MOVE = 4;
  static final int TYPE_NONE = 0;
  static final int TYPE_REMOVE = 2;
  int mLastEventCount = -1;
  int mLastEventPosition = -1;
  int mLastEventType = 0;
  private final SortedList.Callback<T2> mWrappedCallback;
  
  public SortedList$BatchedCallback(SortedList.Callback<T2> paramCallback)
  {
    mWrappedCallback = paramCallback;
  }
  
  public boolean areContentsTheSame(T2 paramT21, T2 paramT22)
  {
    return mWrappedCallback.areContentsTheSame(paramT21, paramT22);
  }
  
  public boolean areItemsTheSame(T2 paramT21, T2 paramT22)
  {
    return mWrappedCallback.areItemsTheSame(paramT21, paramT22);
  }
  
  public int compare(T2 paramT21, T2 paramT22)
  {
    return mWrappedCallback.compare(paramT21, paramT22);
  }
  
  public void dispatchLastEvent()
  {
    if (mLastEventType == 0) {
      return;
    }
    switch (mLastEventType)
    {
    }
    for (;;)
    {
      mLastEventType = 0;
      return;
      mWrappedCallback.onInserted(mLastEventPosition, mLastEventCount);
      continue;
      mWrappedCallback.onRemoved(mLastEventPosition, mLastEventCount);
      continue;
      mWrappedCallback.onChanged(mLastEventPosition, mLastEventCount);
    }
  }
  
  public void onChanged(int paramInt1, int paramInt2)
  {
    if ((mLastEventType == 3) && (paramInt1 <= mLastEventPosition + mLastEventCount) && (paramInt1 + paramInt2 >= mLastEventPosition))
    {
      int i = mLastEventPosition;
      int j = mLastEventCount;
      mLastEventPosition = Math.min(paramInt1, mLastEventPosition);
      mLastEventCount = (Math.max(i + j, paramInt1 + paramInt2) - mLastEventPosition);
      return;
    }
    dispatchLastEvent();
    mLastEventPosition = paramInt1;
    mLastEventCount = paramInt2;
    mLastEventType = 3;
  }
  
  public void onInserted(int paramInt1, int paramInt2)
  {
    if ((mLastEventType == 1) && (paramInt1 >= mLastEventPosition) && (paramInt1 <= mLastEventPosition + mLastEventCount))
    {
      mLastEventCount += paramInt2;
      mLastEventPosition = Math.min(paramInt1, mLastEventPosition);
      return;
    }
    dispatchLastEvent();
    mLastEventPosition = paramInt1;
    mLastEventCount = paramInt2;
    mLastEventType = 1;
  }
  
  public void onMoved(int paramInt1, int paramInt2)
  {
    dispatchLastEvent();
    mWrappedCallback.onMoved(paramInt1, paramInt2);
  }
  
  public void onRemoved(int paramInt1, int paramInt2)
  {
    if ((mLastEventType == 2) && (mLastEventPosition == paramInt1))
    {
      mLastEventCount += paramInt2;
      return;
    }
    dispatchLastEvent();
    mLastEventPosition = paramInt1;
    mLastEventCount = paramInt2;
    mLastEventType = 2;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.util.SortedList.BatchedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */