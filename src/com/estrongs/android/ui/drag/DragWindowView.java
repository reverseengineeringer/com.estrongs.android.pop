package com.estrongs.android.ui.drag;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.d.e;
import com.estrongs.android.util.am;
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
  
  private boolean a(com.estrongs.android.ui.d.d paramd)
  {
    paramd = paramd.b();
    if (paramd == null) {}
    while ((!am.ba(paramd)) && ((!am.bb(paramd)) || (am.bg(paramd))) && ((!am.aB(paramd)) || (am.ai(paramd) == null))) {
      return false;
    }
    return true;
  }
  
  private void b()
  {
    View localView = g.a(a).inflate(2130903116, null);
    addView(localView);
    b = ((TextView)localView.findViewById(2131362190));
    b.setText(2131427348);
    c = ((ImageView)localView.findViewById(2131362191));
    d = ((TextView)localView.findViewById(2131362192));
  }
  
  public void a()
  {
    int i = e.c();
    if (f >= i) {
      return;
    }
    com.estrongs.android.ui.d.d locald = e.c(f);
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
    d.setText(locald.a(a));
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(FileExplorerActivity paramFileExplorerActivity)
  {
    e = paramFileExplorerActivity;
  }
  
  public void a(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    paramm = e.b().b();
    if (paramm == null) {}
    com.estrongs.android.ui.d.d locald;
    do
    {
      return;
      locald = e.c(f);
      paraml = locald.b();
    } while (paramm.equals(locald.b()));
    paramm = com.estrongs.fs.d.m(locald.b());
    aj.a((ESActivity)getContext(), (List)paramObject, paramm, true, true, new q(this, paraml), true);
  }
  
  public void b(l paraml, int paramInt1, int paramInt2, int paramInt3, int paramInt4, m paramm, Object paramObject)
  {
    paraml = e.c(f);
    paramInt1 = c.getPaddingTop();
    paramInt2 = c.getPaddingBottom();
    paramInt3 = c.getPaddingLeft();
    paramInt4 = c.getPaddingRight();
    if (!a(paraml))
    {
      c.setBackgroundResource(2130837620);
      c.setPadding(paramInt3, paramInt1, paramInt4, paramInt2);
    }
    do
    {
      return;
      c.setBackgroundResource(2130837863);
      c.setPadding(paramInt3, paramInt1, paramInt4, paramInt2);
      paramm = e.b().b();
    } while ((paramm == null) || (paramm.equals(paraml.b())));
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
    return a(e.c(f));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.drag.DragWindowView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */