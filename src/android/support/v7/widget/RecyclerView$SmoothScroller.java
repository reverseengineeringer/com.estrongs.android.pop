package android.support.v7.widget;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;

public abstract class RecyclerView$SmoothScroller
{
  private RecyclerView.LayoutManager mLayoutManager;
  private boolean mPendingInitialRun;
  private RecyclerView mRecyclerView;
  private final RecyclerView.SmoothScroller.Action mRecyclingAction = new RecyclerView.SmoothScroller.Action(0, 0);
  private boolean mRunning;
  private int mTargetPosition = -1;
  private View mTargetView;
  
  private void onAnimation(int paramInt1, int paramInt2)
  {
    RecyclerView localRecyclerView = mRecyclerView;
    if ((!mRunning) || (mTargetPosition == -1) || (localRecyclerView == null)) {
      stop();
    }
    mPendingInitialRun = false;
    if (mTargetView != null)
    {
      if (getChildPosition(mTargetView) != mTargetPosition) {
        break label151;
      }
      onTargetFound(mTargetView, mState, mRecyclingAction);
      RecyclerView.SmoothScroller.Action.access$6100(mRecyclingAction, localRecyclerView);
      stop();
    }
    for (;;)
    {
      if (mRunning)
      {
        onSeekTargetStep(paramInt1, paramInt2, mState, mRecyclingAction);
        boolean bool = mRecyclingAction.hasJumpTarget();
        RecyclerView.SmoothScroller.Action.access$6100(mRecyclingAction, localRecyclerView);
        if (bool)
        {
          if (!mRunning) {
            break;
          }
          mPendingInitialRun = true;
          RecyclerView.access$5900(localRecyclerView).postOnAnimation();
        }
      }
      return;
      label151:
      Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
      mTargetView = null;
    }
    stop();
  }
  
  public View findViewByPosition(int paramInt)
  {
    return mRecyclerView.mLayout.findViewByPosition(paramInt);
  }
  
  public int getChildCount()
  {
    return mRecyclerView.mLayout.getChildCount();
  }
  
  public int getChildPosition(View paramView)
  {
    return mRecyclerView.getChildLayoutPosition(paramView);
  }
  
  public RecyclerView.LayoutManager getLayoutManager()
  {
    return mLayoutManager;
  }
  
  public int getTargetPosition()
  {
    return mTargetPosition;
  }
  
  @Deprecated
  public void instantScrollToPosition(int paramInt)
  {
    mRecyclerView.scrollToPosition(paramInt);
  }
  
  public boolean isPendingInitialRun()
  {
    return mPendingInitialRun;
  }
  
  public boolean isRunning()
  {
    return mRunning;
  }
  
  protected void normalize(PointF paramPointF)
  {
    double d = Math.sqrt(x * x + y * y);
    x = ((float)(x / d));
    y = ((float)(y / d));
  }
  
  protected void onChildAttachedToWindow(View paramView)
  {
    if (getChildPosition(paramView) == getTargetPosition()) {
      mTargetView = paramView;
    }
  }
  
  protected abstract void onSeekTargetStep(int paramInt1, int paramInt2, RecyclerView.State paramState, RecyclerView.SmoothScroller.Action paramAction);
  
  protected abstract void onStart();
  
  protected abstract void onStop();
  
  protected abstract void onTargetFound(View paramView, RecyclerView.State paramState, RecyclerView.SmoothScroller.Action paramAction);
  
  public void setTargetPosition(int paramInt)
  {
    mTargetPosition = paramInt;
  }
  
  void start(RecyclerView paramRecyclerView, RecyclerView.LayoutManager paramLayoutManager)
  {
    mRecyclerView = paramRecyclerView;
    mLayoutManager = paramLayoutManager;
    if (mTargetPosition == -1) {
      throw new IllegalArgumentException("Invalid target position");
    }
    RecyclerView.State.access$5802(mRecyclerView.mState, mTargetPosition);
    mRunning = true;
    mPendingInitialRun = true;
    mTargetView = findViewByPosition(getTargetPosition());
    onStart();
    RecyclerView.access$5900(mRecyclerView).postOnAnimation();
  }
  
  protected final void stop()
  {
    if (!mRunning) {
      return;
    }
    onStop();
    RecyclerView.State.access$5802(mRecyclerView.mState, -1);
    mTargetView = null;
    mTargetPosition = -1;
    mPendingInitialRun = false;
    mRunning = false;
    RecyclerView.LayoutManager.access$6000(mLayoutManager, this);
    mLayoutManager = null;
    mRecyclerView = null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.SmoothScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */