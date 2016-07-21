package com.estrongs.android.ui.feedback;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.RatingBar;

class g
  implements Animation.AnimationListener
{
  g(FeedbackRatingView paramFeedbackRatingView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (FeedbackRatingView.h(a)) {
      FeedbackRatingView.i(a).setVisibility(8);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    if (FeedbackRatingView.h(a))
    {
      FeedbackRatingView.f(a).setRating(5.0F);
      FeedbackRatingView.f(a).postDelayed(new h(this), 500L);
    }
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (FeedbackRatingView.h(a))
    {
      FeedbackRatingView.f(a).setRating(0.0F);
      FeedbackRatingView.i(a).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.feedback.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */