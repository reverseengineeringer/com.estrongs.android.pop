package com.estrongs.android.d;

import android.app.Activity;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import java.util.HashMap;
import java.util.Map;

public class a
  extends ci
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
    setTitle(paramActivity.getText(2131232171) + " " + ap.F(paramString2));
    paramString1 = k.a(paramActivity).inflate(2130903354, null);
    setContentView(paramString1);
    i = ((EditText)paramString1.findViewById(2131625255));
    j = ((EditText)paramString1.findViewById(2131624636));
    k = ((CheckBox)paramString1.findViewById(2131625259));
    l = ((CheckBox)paramString1.findViewById(2131625292));
    h = ((TextView)paramString1.findViewById(2131624455));
    i.setSingleLine();
    k.setOnCheckedChangeListener(m);
    setConfirmButton(paramActivity.getString(2131231270), e);
    setCancelButton(paramActivity.getString(2131231265), null);
  }
  
  public void a(int paramInt)
  {
    View localView1 = findViewById(2131624474);
    View localView2 = findViewById(2131624482);
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
 * Qualified Name:     com.estrongs.android.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */