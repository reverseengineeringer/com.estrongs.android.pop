package com.estrongs.android.pop.view;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.ui.c.a;
import com.estrongs.android.ui.f.f;
import com.estrongs.android.view.aw;
import com.estrongs.fs.h;

class cx
  extends f
{
  cx(FileExplorerActivity paramFileExplorerActivity, Context paramContext, View paramView1, View paramView2, String paramString, ImageView paramImageView)
  {
    super(paramContext, paramView1, paramView2, paramString);
  }
  
  protected void a()
  {
    b.M();
  }
  
  protected void a(String paramString)
  {
    FileExplorerActivity.a(b, paramString);
    b.y().m(paramString);
    a.setImageDrawable(b.N.c(paramString));
    if (!(b.y() instanceof a)) {
      FileExplorerActivity.a(b, b.B().getAbsolutePath(), paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */