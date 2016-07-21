package com.estrongs.android.pop.app.analysis.viewholders;

import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.app.analysis.b.g;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class t
  extends RecyclerView.ViewHolder
{
  private DateFormat a = new SimpleDateFormat("yyyy-MM-dd");
  public ImageView d;
  public TextView e;
  public TextView f;
  public TextView g;
  public CheckBox h;
  protected String i;
  protected int j;
  
  public t(View paramView, String paramString)
  {
    super(paramView);
    i = paramString;
    a();
  }
  
  public void a()
  {
    d = ((ImageView)itemView.findViewById(2131624245));
    e = ((TextView)itemView.findViewById(2131624247));
    f = ((TextView)itemView.findViewById(2131624248));
    g = ((TextView)itemView.findViewById(2131624249));
    h = ((AppCompatCheckBox)itemView.findViewById(2131624246));
  }
  
  public void a(int paramInt)
  {
    j = paramInt;
  }
  
  public void a(g paramg, boolean paramBoolean)
  {
    Object localObject = itemView;
    if (a)
    {
      k = 2131558425;
      ((View)localObject).setBackgroundResource(k);
      e.a(b, d);
      e.setText(b.getName());
      long l2 = b.length();
      long l1 = l2;
      if (l2 <= 0L) {
        l1 = 0L;
      }
      f.setText(j.c(l1));
      if ((i == null) || ((!i.equals("newcreate")) && (!i.equals("longtime")))) {
        break label198;
      }
      localObject = a.format(Long.valueOf(b.createdTime()));
      g.setGravity(21);
      label147:
      g.setText((CharSequence)localObject);
      h.setClickable(false);
      h.setChecked(a);
      paramg = h;
      if (!paramBoolean) {
        break label221;
      }
    }
    label198:
    label221:
    for (int k = 0;; k = 8)
    {
      paramg.setVisibility(k);
      return;
      k = 2130837621;
      break;
      localObject = b.getAbsolutePath();
      g.setGravity(19);
      break label147;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */