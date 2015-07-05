package com.estrongs.android.a;

import android.app.Activity;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.am;
import java.util.HashMap;
import java.util.Map;

public class a
  extends cg
{
  public static final Map<Long, a> a = new HashMap();
  String b;
  String c;
  Activity d;
  DialogInterface.OnClickListener e = new c(this);
  protected d f;
  private String g = null;
  private TextView h = null;
  private EditText i = null;
  private EditText j = null;
  private CheckBox k = null;
  private CheckBox l = null;
  private CompoundButton.OnCheckedChangeListener m = new b(this);
  
  public a(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, paramString);
  }
  
  public a(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity);
    d = paramActivity;
    c = paramString1;
    b = paramString2;
    setTitle(paramActivity.getText(2131427448) + " " + am.D(paramString2));
    paramString1 = g.a(paramActivity).inflate(2130903203, null);
    setContentView(paramString1);
    i = ((EditText)paramString1.findViewById(2131362518));
    j = ((EditText)paramString1.findViewById(2131362072));
    k = ((CheckBox)paramString1.findViewById(2131362522));
    l = ((CheckBox)paramString1.findViewById(2131362555));
    h = ((TextView)paramString1.findViewById(2131361951));
    i.setSingleLine();
    k.setOnCheckedChangeListener(m);
    setConfirmButton(paramActivity.getString(2131427339), e);
    setCancelButton(paramActivity.getString(2131427340), null);
  }
  
  public void a(int paramInt)
  {
    View localView1 = findViewById(2131361964);
    View localView2 = findViewById(2131361972);
    if (localView1 != null) {
      localView1.setVisibility(paramInt);
    }
    if (localView2 != null) {
      localView2.setVisibility(paramInt);
    }
  }
  
  public void a(d paramd)
  {
    f = paramd;
  }
  
  public void a(String paramString)
  {
    if (paramString != null)
    {
      h.setVisibility(0);
      h.setText(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */