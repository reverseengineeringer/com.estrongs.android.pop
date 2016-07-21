package com.estrongs.android.ui.drag;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.ao;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.h;
import com.estrongs.android.ui.d.i;
import com.estrongs.android.util.ap;
import com.estrongs.fs.d;
import java.util.List;

public class DragWindowView
  extends LinearLayout
  implements s
{
  private Context a;
  private TextView b;
  private ImageView c;
  private TextView d;
  private FileExplorerActivity e;
  private int f;
  
  public DragWindowView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DragWindowView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, -1);
  }
  
  public DragWindowView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
    b();
  }
  
  private boolean a(h paramh)
  {
    paramh = paramh.a();
    if (paramh == null) {}
    while ((!ap.bl(paramh)) && ((!ap.bm(paramh)) || (ap.br(paramh))) && ((!ap.aL(paramh)) || (ap.as(paramh) == null))) {
      return false;
    }
    return true;
  }
  
  private void b()
  {
    View localView = k.a(a).inflate(2130903205, null);
    addView(localView);
    b = ((TextView)localView.findViewById(2131624755));
    b.setText(2131230838);
    c = ((ImageView)localView.findViewById(2131624756));
    d = ((TextView)localView.findViewById(2131624757));
  }
  
  public void a()
  {
    int i = getWindowListManager().c();
    if (f >= i) {
      return;
    }
    h localh = getWindowListManager().c(f);
    b.setVisibility(4);
    if (e != null)
    {
      Bitmap localBitmap = e.i(f);
      if (localBitmap != null) {
        c.setImageBitmap(localBitmap);
      }
    }
    i = c.getPaddingTop();
    int j = c.getPaddingBottom();
    int k = c.getPaddingLeft();
    int m = c.getPaddingRight();
    c.setBackgroundDrawable(null);
    c.setPadding(k, i, m, j);
    d.setText(localh.a(a));
  }
  
  public void a(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    paramm = getWindowListManager().b().a();
    if (paramm == null) {}
    h localh;
    do
    {
      return;
      localh = getWindowListManager().c(f);
      paraml = localh.a();
    } while (paramm.equals(localh.a()));
    paramm = d.m(localh.a());
    ao.a((Activity)getContext(), (List)paramObject, paramm, true, true, new q(this, paraml), true);
  }
  
  public void b(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    paraml = getWindowListManager().c(f);
    paramInt1 = c.getPaddingTop();
    paramInt2 = c.getPaddingBottom();
    paramInt3 = c.getPaddingLeft();
    paramInt4 = c.getPaddingRight();
    if (!a(paraml))
    {
      c.setBackgroundResource(2130837861);
      c.setPadding(paramInt3, paramInt1, paramInt4, paramInt2);
    }
    do
    {
      return;
      c.setBackgroundResource(2130838160);
      c.setPadding(paramInt3, paramInt1, paramInt4, paramInt2);
      paramm = getWindowListManager().b().a();
    } while ((paramm == null) || (paramm.equals(paraml.a())));
    b.setVisibility(0);
  }
  
  public void c(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject) {}
  
  public void d(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    paramInt1 = c.getPaddingTop();
    paramInt2 = c.getPaddingBottom();
    paramInt3 = c.getPaddingLeft();
    paramInt4 = c.getPaddingRight();
    c.setBackgroundDrawable(null);
    c.setPadding(paramInt3, paramInt1, paramInt4, paramInt2);
    b.setVisibility(4);
  }
  
  public boolean e(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    return a(getWindowListManager().c(f));
  }
  
  public i getWindowListManager()
  {
    if (e != null) {
      return e.au();
    }
    if ((a instanceof FileExplorerActivity)) {
      return ((FileExplorerActivity)a).au();
    }
    return new i();
  }
  
  public void setActivity(FileExplorerActivity paramFileExplorerActivity)
  {
    e = paramFileExplorerActivity;
  }
  
  public void setPosition(int paramInt)
  {
    f = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.DragWindowView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */