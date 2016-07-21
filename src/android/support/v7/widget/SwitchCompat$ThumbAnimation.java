package android.support.v7.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwitchCompat$ThumbAnimation
  extends Animation
{
  final float mDiff;
  final float mEndPosition;
  final float mStartPosition;
  
  private SwitchCompat$ThumbAnimation(SwitchCompat paramSwitchCompat, float paramFloat1, float paramFloat2)
  {
    mStartPosition = paramFloat1;
    mEndPosition = paramFloat2;
    mDiff = (paramFloat2 - paramFloat1);
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    SwitchCompat.access$200(this$0, mStartPosition + mDiff * paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SwitchCompat.ThumbAnimation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */