package com.estrongs.android.pop.app.analysis.viewholders;

import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.app.analysis.b.g;
import com.estrongs.android.view.eb;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.d;

public class u
  extends t
{
  public u(View paramView)
  {
    super(paramView, null);
  }
  
  public void a()
  {
    d = ((ImageView)itemView.findViewById(2131624199));
    e = ((TextView)itemView.findViewById(2131624200));
    h = ((CheckBox)itemView.findViewById(2131624070));
  }
  
  public void a(g paramg, boolean paramBoolean)
  {
    h localh1 = b;
    itemView.setBackgroundResource(2130837674);
    Object localObject = new RelativeLayout.LayoutParams(j, j);
    itemView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    if ((localh1 instanceof d))
    {
      localObject = localh1;
      e.a((h)localObject, d, 17170445);
      localObject = localh1.getExtra("item_count");
      if (localObject == null) {
        break label194;
      }
      e.setText(localh1.getName() + "(" + localObject + ")");
      e.setEllipsize(TextUtils.TruncateAt.valueOf("MIDDLE"));
      label134:
      h.setClickable(false);
      h.setChecked(a);
      paramg = h;
      if (!paramBoolean) {
        break label223;
      }
    }
    label194:
    label223:
    for (int i = 0;; i = 8)
    {
      paramg.setVisibility(i);
      return;
      h localh2 = eb.a(localh1, false);
      localObject = localh2;
      if (localh2 != null) {
        break;
      }
      localObject = localh1;
      break;
      e.setText(localh1.getName());
      e.setEllipsize(TextUtils.TruncateAt.valueOf("END"));
      break label134;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */