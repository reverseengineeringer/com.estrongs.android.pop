package com.estrongs.android.ui.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.impl.local.q;

class hq
  implements DialogInterface.OnClickListener
{
  hq(hn paramhn, CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3, CheckBox paramCheckBox4, CheckBox paramCheckBox5, CheckBox paramCheckBox6, CheckBox paramCheckBox7, CheckBox paramCheckBox8, CheckBox paramCheckBox9, CheckBox paramCheckBox10, CheckBox paramCheckBox11, CheckBox paramCheckBox12) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    if (a.isChecked())
    {
      paramDialogInterface = m.h;
      a |= 0x1;
      if (!b.isChecked()) {
        break label585;
      }
      paramDialogInterface = m.h;
      a |= 0x2;
      label62:
      if (!c.isChecked()) {
        break label607;
      }
      paramDialogInterface = m.h;
      a |= 0x4;
      label90:
      if (!d.isChecked()) {
        break label629;
      }
      paramDialogInterface = m.h;
      a |= 0x8;
      label119:
      if (!e.isChecked()) {
        break label651;
      }
      paramDialogInterface = m.h;
      a |= 0x10;
      label148:
      if (!f.isChecked()) {
        break label673;
      }
      paramDialogInterface = m.h;
      a |= 0x20;
      label177:
      if (!g.isChecked()) {
        break label695;
      }
      paramDialogInterface = m.h;
      a |= 0x40;
      label206:
      if (!h.isChecked()) {
        break label717;
      }
      paramDialogInterface = m.h;
      a |= 0x80;
      label236:
      if (!i.isChecked()) {
        break label740;
      }
      paramDialogInterface = m.h;
      a |= 0x100;
      label266:
      if (!j.isChecked()) {
        break label763;
      }
      paramDialogInterface = m.h;
      a |= 0x200;
      label296:
      if (!k.isChecked()) {
        break label786;
      }
      paramDialogInterface = m.h;
      a |= 0x400;
      label326:
      if (!l.isChecked()) {
        break label809;
      }
      paramDialogInterface = m.h;
    }
    for (a |= 0x800;; a &= 0xF7FF)
    {
      m.h.c = -1;
      if (!l.a(hn.d(m), m.h)) {
        ag.a(m.ar(), 2131427766, 0);
      }
      m.h = l.f(hn.d(m));
      m.a.setText(l.a(m.h.c));
      m.b.setText(l.b(m.h.b));
      m.g = hn.a(m, m.h);
      hn.e(m).setText(m.g.substring(0, 3) + " " + m.g.substring(3, 6) + " " + m.g.substring(6, 9));
      return;
      paramDialogInterface = m.h;
      a &= 0xFFFFFFFE;
      break;
      label585:
      paramDialogInterface = m.h;
      a &= 0xFFFFFFFD;
      break label62;
      label607:
      paramDialogInterface = m.h;
      a &= 0xFFFFFFFB;
      break label90;
      label629:
      paramDialogInterface = m.h;
      a &= 0xFFFFFFF7;
      break label119;
      label651:
      paramDialogInterface = m.h;
      a &= 0xFFFFFFEF;
      break label148;
      label673:
      paramDialogInterface = m.h;
      a &= 0xFFFFFFDF;
      break label177;
      label695:
      paramDialogInterface = m.h;
      a &= 0xFFFFFFBF;
      break label206;
      label717:
      paramDialogInterface = m.h;
      a &= 0xFF7F;
      break label236;
      label740:
      paramDialogInterface = m.h;
      a &= 0xFEFF;
      break label266;
      label763:
      paramDialogInterface = m.h;
      a &= 0xFDFF;
      break label296;
      label786:
      paramDialogInterface = m.h;
      a &= 0xFBFF;
      break label326;
      label809:
      paramDialogInterface = m.h;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */