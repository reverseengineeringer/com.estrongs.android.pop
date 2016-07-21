package android.support.design.widget;

import android.support.v4.view.cn;
import android.view.ViewPropertyAnimator;

class an
  extends ah
{
  private boolean m;
  
  an(VisibilityAwareImageButton paramVisibilityAwareImageButton, ba paramba)
  {
    super(paramVisibilityAwareImageButton, paramba);
  }
  
  private void e(float paramFloat)
  {
    if (a != null) {
      a.a(-paramFloat);
    }
    if (d != null) {
      d.b(-paramFloat);
    }
  }
  
  void a(as paramas, boolean paramBoolean)
  {
    if ((m) || (k.getVisibility() != 0)) {
      if (paramas != null) {
        paramas.b();
      }
    }
    do
    {
      return;
      if ((cn.H(k)) && (!k.isInEditMode())) {
        break;
      }
      k.a(8, paramBoolean);
    } while (paramas == null);
    paramas.b();
    return;
    k.animate().cancel();
    k.animate().scaleX(0.0F).scaleY(0.0F).alpha(0.0F).setDuration(200L).setInterpolator(a.c).setListener(new ao(this, paramBoolean, paramas));
  }
  
  void b(as paramas, boolean paramBoolean)
  {
    if ((m) || (k.getVisibility() != 0))
    {
      if ((!cn.H(k)) || (k.isInEditMode())) {
        break label127;
      }
      k.animate().cancel();
      if (k.getVisibility() != 0)
      {
        k.setAlpha(0.0F);
        k.setScaleY(0.0F);
        k.setScaleX(0.0F);
      }
      k.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(200L).setInterpolator(a.d).setListener(new ap(this, paramBoolean, paramas));
    }
    label127:
    do
    {
      return;
      k.a(0, paramBoolean);
      k.setAlpha(1.0F);
      k.setScaleY(1.0F);
      k.setScaleX(1.0F);
    } while (paramas == null);
    paramas.a();
  }
  
  boolean d()
  {
    return true;
  }
  
  void e()
  {
    e(k.getRotation());
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */