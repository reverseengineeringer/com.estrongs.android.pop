package com.estrongs.android.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.DateFormat;

public class q
  extends cg
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
    paramt = g.a(paramContext).inflate(2130903237, null);
    setContentView(paramt);
    a(paramt.findViewById(2131362230), paramContext.getString(2131428277) + paramContext.getString(2131428707));
    a(paramt.findViewById(2131362236), paramContext.getString(2131428278) + paramContext.getString(2131428707));
    d = ((CheckBox)paramt.findViewById(2131362229));
    setCancelButton(paramContext.getText(2131427358), new r(this));
    setConfirmButton(paramContext.getText(2131428010), new s(this));
    setTitle(paramContext.getString(2131428402));
    a(paramt.findViewById(2131361822), paramContext.getString(2131428409));
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
    DateFormat localDateFormat = ad.a(mContext).E();
    String str = paramh.getPath();
    a(paramView.findViewById(2131362231), str);
    a(paramView.findViewById(2131362233), j.c(paramh.length()));
    a(paramView.findViewById(2131362235), localDateFormat.format(Long.valueOf(paramh.lastModified())));
  }
  
  public void dismiss()
  {
    b.a(c, d.isChecked());
    super.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */