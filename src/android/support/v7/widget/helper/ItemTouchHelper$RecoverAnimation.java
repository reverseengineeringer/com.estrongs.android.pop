package android.support.v7.widget.helper;

import android.support.v4.a.a;
import android.support.v4.a.b;
import android.support.v4.a.l;
import android.support.v4.view.cn;
import android.support.v7.widget.RecyclerView.ViewHolder;

class ItemTouchHelper$RecoverAnimation
  implements b
{
  final int mActionState;
  private final int mAnimationType;
  private boolean mEnded = false;
  private float mFraction;
  public boolean mIsPendingCleanup;
  boolean mOverridden = false;
  final float mStartDx;
  final float mStartDy;
  final float mTargetX;
  final float mTargetY;
  private final l mValueAnimator;
  final RecyclerView.ViewHolder mViewHolder;
  float mX;
  float mY;
  
  public ItemTouchHelper$RecoverAnimation(ItemTouchHelper paramItemTouchHelper, RecyclerView.ViewHolder paramViewHolder, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    mActionState = paramInt2;
    mAnimationType = paramInt1;
    mViewHolder = paramViewHolder;
    mStartDx = paramFloat1;
    mStartDy = paramFloat2;
    mTargetX = paramFloat3;
    mTargetY = paramFloat4;
    mValueAnimator = a.a();
    mValueAnimator.a(new ItemTouchHelper.RecoverAnimation.1(this, paramItemTouchHelper));
    mValueAnimator.a(itemView);
    mValueAnimator.a(this);
    setFraction(0.0F);
  }
  
  public void cancel()
  {
    mValueAnimator.b();
  }
  
  public void onAnimationCancel(l paraml)
  {
    setFraction(1.0F);
  }
  
  public void onAnimationEnd(l paraml)
  {
    if (!mEnded) {
      mViewHolder.setIsRecyclable(true);
    }
    mEnded = true;
  }
  
  public void onAnimationRepeat(l paraml) {}
  
  public void onAnimationStart(l paraml) {}
  
  public void setDuration(long paramLong)
  {
    mValueAnimator.a(paramLong);
  }
  
  public void setFraction(float paramFloat)
  {
    mFraction = paramFloat;
  }
  
  public void start()
  {
    mViewHolder.setIsRecyclable(false);
    mValueAnimator.a();
  }
  
  public void update()
  {
    if (mStartDx == mTargetX) {}
    for (mX = cn.o(mViewHolder.itemView); mStartDy == mTargetY; mX = (mStartDx + mFraction * (mTargetX - mStartDx)))
    {
      mY = cn.p(mViewHolder.itemView);
      return;
    }
    mY = (mStartDy + mFraction * (mTargetY - mStartDy));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.helper.ItemTouchHelper.RecoverAnimation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */