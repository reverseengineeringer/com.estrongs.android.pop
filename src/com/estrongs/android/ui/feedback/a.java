package com.estrongs.android.ui.feedback;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.MaxWidthLinearLayout;

public class a
  extends ci
{
  private FeedbackRatingView a;
  
  public a(Context paramContext)
  {
    super(paramContext);
    int i = paramContext.getResources().getDimensionPixelOffset(2131165262);
    mBodyView.findViewById(2131624548).setPadding(i, i, i, i);
    mBodyView.findViewById(2131624550).setVisibility(8);
    a = new FeedbackRatingView(paramContext);
    a.setOnClickedListener(new b(this));
    setContentView(a);
  }
  
  public void show()
  {
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.feedback.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */