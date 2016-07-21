package android.support.v7.view;

import android.support.v4.view.ex;
import android.support.v4.view.fo;
import android.support.v4.view.fp;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public class ViewPropertyAnimatorCompatSet
{
  private final ArrayList<ex> mAnimators = new ArrayList();
  private long mDuration = -1L;
  private Interpolator mInterpolator;
  private boolean mIsStarted;
  private fo mListener;
  private final fp mProxyListener = new ViewPropertyAnimatorCompatSet.1(this);
  
  private void onAnimationsEnded()
  {
    mIsStarted = false;
  }
  
  public void cancel()
  {
    if (!mIsStarted) {
      return;
    }
    Iterator localIterator = mAnimators.iterator();
    while (localIterator.hasNext()) {
      ((ex)localIterator.next()).b();
    }
    mIsStarted = false;
  }
  
  public ViewPropertyAnimatorCompatSet play(ex paramex)
  {
    if (!mIsStarted) {
      mAnimators.add(paramex);
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet playSequentially(ex paramex1, ex paramex2)
  {
    mAnimators.add(paramex1);
    paramex2.b(paramex1.a());
    mAnimators.add(paramex2);
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet setDuration(long paramLong)
  {
    if (!mIsStarted) {
      mDuration = paramLong;
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet setInterpolator(Interpolator paramInterpolator)
  {
    if (!mIsStarted) {
      mInterpolator = paramInterpolator;
    }
    return this;
  }
  
  public ViewPropertyAnimatorCompatSet setListener(fo paramfo)
  {
    if (!mIsStarted) {
      mListener = paramfo;
    }
    return this;
  }
  
  public void start()
  {
    if (mIsStarted) {
      return;
    }
    Iterator localIterator = mAnimators.iterator();
    while (localIterator.hasNext())
    {
      ex localex = (ex)localIterator.next();
      if (mDuration >= 0L) {
        localex.a(mDuration);
      }
      if (mInterpolator != null) {
        localex.a(mInterpolator);
      }
      if (mListener != null) {
        localex.a(mProxyListener);
      }
      localex.c();
    }
    mIsStarted = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.ViewPropertyAnimatorCompatSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */