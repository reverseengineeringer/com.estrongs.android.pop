package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import android.widget.CheckBox;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;

public class fv
  extends cr
{
  boolean a = false;
  
  public fv(Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  protected void a(ci paramci, int paramInt)
  {
    if ((a) && (3 == P()) && (N()))
    {
      i.setBackgroundDrawable(null);
      l.setOnClickListener(new fw(this, paramInt));
    }
  }
  
  protected void a(ci paramci, View paramView, int paramInt)
  {
    if (a)
    {
      if (j != null) {
        j.a(h, itemView, paramInt);
      }
      return;
    }
    super.a(paramci, paramView, paramInt);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    K();
    super.a(paramh, paramTypedMap);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a = true;
      a(true);
    }
  }
  
  public boolean s()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */