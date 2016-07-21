package com.estrongs.android.pop.app.analysis.viewholders;

import android.content.Context;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.b.a.a;
import com.estrongs.android.h.a.e;
import com.estrongs.android.h.f;
import com.estrongs.fs.h;

public abstract class n
  extends RecyclerView.ViewHolder
{
  public n(View paramView)
  {
    super(paramView);
  }
  
  public void a(TextView paramTextView, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
    paramTextView.setText(paramString);
  }
  
  public abstract void a(a parama, Context paramContext);
  
  protected void a(h paramh, ImageView paramImageView)
  {
    if (f.b(paramh))
    {
      e.b(paramh.getAbsolutePath(), paramImageView, paramh, f.g(paramh), true);
      return;
    }
    e.a(f.g(paramh), paramImageView, paramh);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */