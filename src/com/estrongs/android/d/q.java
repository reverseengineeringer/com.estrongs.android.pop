package com.estrongs.android.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.DateFormat;

public class q
  extends ci
{
  h a;
  t b;
  int c = 0;
  CheckBox d;
  
  public q(Context paramContext, h paramh, t paramt)
  {
    super(paramContext);
    a = paramh;
    b = paramt;
    paramt = k.a(paramContext).inflate(2130903403, null);
    setContentView(paramt);
    a(paramt.findViewById(2131624823), paramContext.getString(2131232361) + paramContext.getString(2131231222));
    a(paramt.findViewById(2131624829), paramContext.getString(2131231324) + paramContext.getString(2131231222));
    d = ((CheckBox)paramt.findViewById(2131624822));
    setCancelButton(paramContext.getText(2131230897), new r(this));
    setConfirmButton(paramContext.getText(2131231909), new s(this));
    setTitle(paramContext.getString(2131232258));
    a(paramt.findViewById(2131624200), paramContext.getString(2131232256));
    a(paramt, paramh);
    setCancelable(false);
    setCanceledOnTouchOutside(false);
  }
  
  public static void a(View paramView, String paramString)
  {
    if (paramView == null) {}
    while (!(paramView instanceof TextView)) {
      return;
    }
    ((TextView)paramView).setText(paramString);
  }
  
  public void a(View paramView, h paramh)
  {
    DateFormat localDateFormat = ad.a(mContext).F();
    String str = paramh.getPath();
    a(paramView.findViewById(2131624824), str);
    a(paramView.findViewById(2131624826), j.c(paramh.length()));
    a(paramView.findViewById(2131624828), localDateFormat.format(Long.valueOf(paramh.lastModified())));
  }
  
  public void dismiss()
  {
    b.a(c, d.isChecked());
    super.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */