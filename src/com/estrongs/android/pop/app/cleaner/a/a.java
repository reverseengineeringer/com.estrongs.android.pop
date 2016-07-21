package com.estrongs.android.pop.app.cleaner.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.TextView;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.TripleStateCheckBox;

public class a
  extends RecyclerView.ViewHolder
{
  public TextView a = (TextView)a(2131625084);
  public TextView b = (TextView)a(2131625083);
  public View c = a(2131625085);
  public TripleStateCheckBox d = (TripleStateCheckBox)a(2131625086);
  public View e = a(2131624640);
  
  public a(View paramView)
  {
    super(paramView);
  }
  
  private View a(int paramInt)
  {
    return itemView.findViewById(paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject = at.a(FexApplication.a());
    if (paramBoolean) {}
    for (int i = 2130838008;; i = 2130838044)
    {
      localObject = ((at)localObject).a(i);
      ((Drawable)localObject).setBounds(0, 0, ((Drawable)localObject).getMinimumWidth(), ((Drawable)localObject).getMinimumHeight());
      a.setCompoundDrawablePadding(FexApplication.a().getResources().getDimensionPixelSize(2131165255));
      a.setCompoundDrawables(null, null, (Drawable)localObject, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */