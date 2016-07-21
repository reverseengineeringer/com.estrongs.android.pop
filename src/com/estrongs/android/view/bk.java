package com.estrongs.android.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.estrongs.android.pop.app.compress.a;
import com.estrongs.android.pop.app.compress.a.d;
import com.estrongs.android.pop.app.compress.a.e;
import com.estrongs.android.pop.app.compress.ax;
import com.estrongs.android.pop.app.compress.bb;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.h;
import java.io.File;
import java.util.Map;

class bk
  implements View.OnClickListener
{
  bk(bj parambj, h paramh, bl parambl) {}
  
  public void onClick(View paramView)
  {
    paramView = a.getAbsolutePath();
    Object localObject = (bb)ak.u().get(paramView);
    if ((localObject != null) && (((bb)localObject).c() == 1))
    {
      ak.a(c.b, (bb)localObject);
      return;
    }
    localObject = (ax)ak.v().get(paramView);
    if ((localObject != null) && (((ax)localObject).d() == 1))
    {
      ak.a(c.b, (ax)localObject, a);
      return;
    }
    localObject = d.a(a.getAbsolutePath());
    if ((b.b instanceof ESImageView))
    {
      ((ESImageView)b.b).setTopCornerImage(null);
      b.b.invalidate();
    }
    aa.a().c(a.getAbsolutePath());
    if ((localObject != null) && (d) && (c != null) && (new File(c).exists()))
    {
      paramView = c;
      ((FileExplorerActivity)c.b.ag).d(paramView);
      return;
    }
    paramView = new a(c.b.ag, false, paramView, null, null, null);
    localObject = new bb(c.b.ag);
    ak.a(c.b, (bb)localObject, b.d, b.f, b.e, b.g, b.b, b.h);
    ((bb)localObject).a(ak.e(c.b));
    paramView.a((bb)localObject);
    paramView.a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */