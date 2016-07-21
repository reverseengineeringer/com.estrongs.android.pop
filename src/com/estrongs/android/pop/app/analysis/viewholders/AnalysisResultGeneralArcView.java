package com.estrongs.android.pop.app.analysis.viewholders;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.os.Build.VERSION;
import android.os.Handler;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import java.text.DecimalFormat;
import java.util.List;

public class AnalysisResultGeneralArcView
  extends View
{
  private static final float DEFAULT_ANGLE = 270.0F;
  private static final float MIN_PERCENT = 0.01F;
  private static final String MSG_CENTER_SUF = "%";
  private static final float START_ANGLE = 135.0F;
  private float mAngle;
  private float mAnimValueProgress = 1.0F;
  private float mAnimValueSwitch = 1.0F;
  private ObjectAnimator mAnimaProgress;
  private ObjectAnimator mAnimaSwitch;
  private long mAnimateTimeProgress = 1500L;
  private long mAnimateTimeSwitch = 600L;
  private int[] mArrColorsSecond;
  private List<Long> mArrData;
  private List<Long> mArrDataSecond;
  private int mBgArcColor = 2131558430;
  private Paint mBgArcPaint;
  private Bitmap mBmpIcon;
  private Paint mBmpPaint;
  private Camera mCamera;
  private PointF mCenter;
  private int mCenterColor = -1;
  private String mCenterTextColor = "#999999";
  private int mCenterTextSize = 2131165281;
  private int mCenterTextSufSize = 2131165255;
  private int[] mColors;
  private int mDefaultSize = 2131165330;
  private long mDelayTimeSwitch = 2000L;
  private DecimalFormat mFormat = new DecimalFormat("#.##");
  private float mFromeDegress = 0.0F;
  private Handler mHandler = new Handler();
  private boolean mIsShowAnimaed;
  private boolean mIsShowBmp;
  private boolean mIsStopped;
  private float mMinAngle = 1.0F;
  private Paint mPaint;
  private float mPercent;
  private float mPercentSecond;
  private int mRadius;
  private RectF mRect;
  private int mStorkWidth = 2131165328;
  private Runnable mThreadAnim = new h(this);
  private float mToDegress = 0.0F;
  private TextPaint mTxtPaint;
  private TextPaint mTxtSufPaint;
  
  public AnalysisResultGeneralArcView(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public AnalysisResultGeneralArcView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public AnalysisResultGeneralArcView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  public AnalysisResultGeneralArcView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    init();
  }
  
  private void calcAnglse()
  {
    mAngle = (1.0F * (float)((Long)mArrData.get(0)).longValue() / (float)((Long)mArrData.get(1)).longValue() * 270.0F);
    if (mAngle < mMinAngle) {
      mAngle = mMinAngle;
    }
  }
  
  private int dip2px(int paramInt)
  {
    return getContext().getResources().getDimensionPixelSize(paramInt);
  }
  
  private void draw3DRotateBmp(Canvas paramCanvas)
  {
    RectF localRectF = new RectF();
    left = (mCenter.x - mBmpIcon.getWidth() / 2);
    top = (mCenter.y - mBmpIcon.getHeight() / 2);
    right = (left + mBmpIcon.getWidth());
    bottom = (top + mBmpIcon.getHeight());
    paramCanvas.save();
    Matrix localMatrix = new Matrix();
    mCamera.save();
    mCamera.rotateY(180.0F);
    mCamera.getMatrix(localMatrix);
    mCamera.restore();
    localMatrix.preTranslate(-localRectF.centerX(), -localRectF.centerY());
    localMatrix.postTranslate(localRectF.centerX(), localRectF.centerY());
    paramCanvas.concat(localMatrix);
    if (mIsShowBmp) {
      if (mAnimValueSwitch > 0.5F) {
        mBmpPaint.setAlpha(255);
      }
    }
    for (;;)
    {
      paramCanvas.drawBitmap(mBmpIcon, null, localRectF, mBmpPaint);
      paramCanvas.restore();
      return;
      if (mAnimValueSwitch > 0.5F) {
        mBmpPaint.setAlpha(0);
      }
    }
  }
  
  private void draw3DRotateTxt(Canvas paramCanvas)
  {
    if (mIsShowBmp) {
      if (mAnimValueSwitch > 0.5F) {}
    }
    StringBuffer localStringBuffer;
    for (;;)
    {
      localStringBuffer = new StringBuffer();
      if ((mPercent <= 0.0F) || (mPercent > 0.01F)) {
        break;
      }
      localStringBuffer.append(0.01F);
      float f2 = (mTxtPaint.descent() - mTxtPaint.ascent()) / 2.0F;
      float f3 = mTxtPaint.descent();
      float f1 = (mTxtPaint.measureText(localStringBuffer.toString()) + mTxtSufPaint.measureText("%")) / 2.0F;
      f2 = f2 - f3 + mCenter.y;
      paramCanvas.drawText(localStringBuffer.toString(), mCenter.x - f1, f2, mTxtPaint);
      f3 = mCenter.x;
      paramCanvas.drawText("%", mTxtPaint.measureText(localStringBuffer.toString()) + (f3 - f1), f2, mTxtSufPaint);
      return;
      mTxtPaint.setAlpha(0);
      mTxtSufPaint.setAlpha(0);
      continue;
      if (mAnimValueSwitch > 0.5F)
      {
        mTxtPaint.setAlpha(255);
        mTxtSufPaint.setAlpha(255);
      }
    }
    if (mPercent > 10.0F) {}
    for (Object localObject = Integer.valueOf(Math.round(mPercent));; localObject = mFormat.format(mPercent))
    {
      localStringBuffer.append(localObject);
      break;
    }
  }
  
  private void drawArc(Canvas paramCanvas)
  {
    if (mPaint.getShader() == null)
    {
      int i = getResources().getColor(mColors[0]);
      int j = getResources().getColor(mColors[1]);
      f = mAngle / 360.0F;
      localObject = new SweepGradient(mCenter.x, mCenter.y, new int[] { i, j }, new float[] { 0.0F, f });
      Matrix localMatrix = new Matrix();
      localMatrix.setRotate(125.0F, mCenter.x, mCenter.y);
      ((SweepGradient)localObject).setLocalMatrix(localMatrix);
      mPaint.setShader((Shader)localObject);
    }
    Object localObject = mRect;
    float f = mAngle;
    paramCanvas.drawArc((RectF)localObject, 135.0F, mAnimValueProgress * f, false, mPaint);
  }
  
  private void drawBgArc(Canvas paramCanvas)
  {
    paramCanvas.drawArc(mRect, 135.0F, 270.0F, false, mBgArcPaint);
  }
  
  private void drawCenterText(Canvas paramCanvas)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    float f1;
    if ((mPercent > 0.0F) && (mPercent <= 0.01F))
    {
      localStringBuffer.append(0.01F);
      f3 = mTxtPaint.descent() - mTxtPaint.ascent();
      f4 = f3 / 2.0F - mTxtPaint.descent();
      f1 = (mTxtPaint.measureText(localStringBuffer.toString()) + mTxtSufPaint.measureText("%")) / 2.0F;
      if (mIsShowBmp)
      {
        f2 = f3 + (mCenter.y + mBmpIcon.getHeight() / 2);
        f3 = f4 + mCenter.y;
        paramCanvas.drawText(localStringBuffer.toString(), mCenter.x - f1, f2 - (f2 - f3) * mAnimValueSwitch, mTxtPaint);
        f4 = mCenter.x;
        paramCanvas.drawText("%", mTxtPaint.measureText(localStringBuffer.toString()) + (f4 - f1), f2 - (f2 - f3) * mAnimValueSwitch, mTxtSufPaint);
      }
    }
    else
    {
      if (mPercent > 10.0F) {}
      for (Object localObject = Integer.valueOf(Math.round(mPercent));; localObject = mFormat.format(mPercent))
      {
        localStringBuffer.append(localObject);
        break;
      }
    }
    float f2 = f4 + mCenter.y;
    float f3 = mCenter.y - mBmpIcon.getHeight() / 2 - f3;
    paramCanvas.drawText(localStringBuffer.toString(), mCenter.x - f1, f2 - (f2 - f3) * mAnimValueSwitch, mTxtPaint);
    float f4 = mCenter.x;
    paramCanvas.drawText("%", mTxtPaint.measureText(localStringBuffer.toString()) + (f4 - f1), f2 - (f2 - f3) * mAnimValueSwitch, mTxtSufPaint);
  }
  
  private void drawIcon(Canvas paramCanvas)
  {
    RectF localRectF = new RectF();
    left = (mCenter.x - mBmpIcon.getWidth() / 2);
    if (mIsShowBmp) {}
    for (top = (mCenter.y - mBmpIcon.getHeight() / 2 - mAnimValueSwitch * mBmpIcon.getHeight());; top = (mCenter.y + mBmpIcon.getHeight() / 2 - mAnimValueSwitch * mBmpIcon.getHeight()))
    {
      right = (left + mBmpIcon.getWidth());
      bottom = (top + mBmpIcon.getHeight());
      paramCanvas.drawBitmap(mBmpIcon, null, localRectF, null);
      return;
    }
  }
  
  private void init()
  {
    mIsShowBmp = false;
    mIsStopped = false;
    mCamera = new Camera();
    mPaint = new Paint(1);
    mPaint.setStyle(Paint.Style.STROKE);
    mPaint.setStrokeCap(Paint.Cap.ROUND);
    mPaint.setStrokeWidth(dip2px(mStorkWidth));
    mTxtPaint = new TextPaint(1);
    mTxtPaint.setColor(Color.parseColor(mCenterTextColor));
    mTxtPaint.setTextSize(dip2px(mCenterTextSize));
    mTxtSufPaint = new TextPaint(1);
    mTxtSufPaint.setColor(Color.parseColor(mCenterTextColor));
    mTxtSufPaint.setTextSize(dip2px(mCenterTextSufSize));
    mBgArcPaint = new Paint(1);
    mBgArcPaint.setStrokeWidth(dip2px(mStorkWidth));
    mBgArcPaint.setStyle(Paint.Style.STROKE);
    mBgArcPaint.setStrokeCap(Paint.Cap.ROUND);
    mBgArcPaint.setColor(getResources().getColor(mBgArcColor));
    mBmpPaint = new Paint(1);
    mBmpPaint.setStyle(Paint.Style.FILL);
    mBmpPaint.setColor(-1);
    mBmpPaint.setAlpha(0);
    mAnimaProgress = ObjectAnimator.ofFloat(this, "animateValue", new float[] { 0.0F, 1.0F });
    mAnimaProgress.setInterpolator(new AccelerateDecelerateInterpolator());
    mAnimaProgress.setDuration(mAnimateTimeProgress);
    mAnimaProgress.addListener(new f(this));
    mAnimaSwitch = ObjectAnimator.ofFloat(this, "animValueSwitch", new float[] { 0.0F, 1.0F });
    mAnimaSwitch.setInterpolator(new AccelerateDecelerateInterpolator());
    mAnimaSwitch.setDuration(mAnimateTimeSwitch);
    mAnimaSwitch.addListener(new g(this));
  }
  
  private void startAnimSwitch()
  {
    if (Build.VERSION.SDK_INT < 11) {}
    while (mAnimaSwitch.isRunning()) {
      return;
    }
    mAnimaSwitch.start();
  }
  
  public float getAnimateValue()
  {
    return mAnimValueProgress;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    if (getWidth() > getHeight()) {}
    for (int i = (getHeight() - dip2px(mStorkWidth) * 2) / 2;; i = (getWidth() - dip2px(mStorkWidth) * 2) / 2)
    {
      mRadius = i;
      mRect = new RectF();
      mRect.left = (getWidth() / 2 - mRadius - dip2px(mStorkWidth) / 2);
      mRect.top = (getHeight() / 2 - mRadius - dip2px(mStorkWidth) / 2);
      mRect.right = (getWidth() / 2 + mRadius + dip2px(mStorkWidth) / 2);
      mRect.bottom = (getHeight() / 2 + mRadius + dip2px(mStorkWidth) / 2);
      mCenter = new PointF(mRect.centerX(), mRect.centerY());
      drawBgArc(paramCanvas);
      drawArc(paramCanvas);
      paramCanvas.save();
      paramCanvas.clipRect(new RectF(mCenter.x - mRadius + dip2px(mStorkWidth), mCenter.y - mBmpIcon.getHeight() / 2, mCenter.x + mRadius - dip2px(mStorkWidth), mCenter.y + mBmpIcon.getHeight() / 2));
      Matrix localMatrix = new Matrix();
      mCamera.save();
      mCamera.rotateY(mFromeDegress + (mToDegress - mFromeDegress) * mAnimValueSwitch);
      mCamera.getMatrix(localMatrix);
      mCamera.restore();
      localMatrix.preTranslate(-mCenter.x, -mCenter.y);
      localMatrix.postTranslate(mCenter.x, mCenter.y);
      paramCanvas.concat(localMatrix);
      draw3DRotateBmp(paramCanvas);
      draw3DRotateTxt(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = dip2px(mDefaultSize);
    setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), resolveSize(i, paramInt1)), Math.max(getSuggestedMinimumHeight(), resolveSize(i, paramInt2)));
  }
  
  public void setAnimValueSwitch(float paramFloat)
  {
    mAnimValueSwitch = paramFloat;
    postInvalidate();
  }
  
  public void setAnimateValue(float paramFloat)
  {
    mAnimValueProgress = paramFloat;
    postInvalidate();
  }
  
  public void setColorAndData(int[] paramArrayOfInt, List<Long> paramList, int paramInt)
  {
    if (mAnimaProgress.isRunning())
    {
      mArrColorsSecond = paramArrayOfInt;
      mArrDataSecond = paramList;
      if (((Long)mArrDataSecond.get(1)).longValue() <= 0L)
      {
        mPercentSecond = 0.0F;
        return;
      }
      mPercentSecond = (1.0F * (float)((Long)mArrDataSecond.get(0)).longValue() / (float)((Long)mArrDataSecond.get(1)).longValue() * 100.0F);
      return;
    }
    mColors = paramArrayOfInt;
    mArrData = paramList;
    if (((Long)mArrData.get(1)).longValue() <= 0L) {}
    for (mPercent = 0.0F;; mPercent = (1.0F * (float)((Long)mArrData.get(0)).longValue() / (float)((Long)mArrData.get(1)).longValue() * 100.0F))
    {
      if (mBmpIcon == null) {
        mBmpIcon = BitmapFactory.decodeResource(getResources(), paramInt);
      }
      calcAnglse();
      startAnimate();
      return;
    }
  }
  
  public void startAnimate()
  {
    if (Build.VERSION.SDK_INT < 11) {}
    do
    {
      return;
      if (mIsStopped)
      {
        mIsStopped = false;
        startAnimSwitch();
      }
    } while ((mIsShowAnimaed) || (mAnimaProgress.isRunning()));
    mAnimValueProgress = 1.0F;
    mAnimaProgress.start();
    mIsShowAnimaed = true;
  }
  
  public void stopAnimate()
  {
    mIsStopped = true;
    mAnimaProgress.cancel();
    mAnimaSwitch.cancel();
    mHandler.removeCallbacks(mThreadAnim);
    setAnimValueSwitch(1.0F);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.viewholders.AnalysisResultGeneralArcView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */