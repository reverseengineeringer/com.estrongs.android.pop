.class public Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;
.super Landroid/view/View;


# static fields
.field private static final DEFAULT_ANGLE:F = 270.0f

.field private static final MIN_PERCENT:F = 0.01f

.field private static final MSG_CENTER_SUF:Ljava/lang/String; = "%"

.field private static final START_ANGLE:F = 135.0f


# instance fields
.field private mAngle:F

.field private mAnimValueProgress:F

.field private mAnimValueSwitch:F

.field private mAnimaProgress:Landroid/animation/ObjectAnimator;

.field private mAnimaSwitch:Landroid/animation/ObjectAnimator;

.field private mAnimateTimeProgress:J

.field private mAnimateTimeSwitch:J

.field private mArrColorsSecond:[I

.field private mArrData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mArrDataSecond:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBgArcColor:I

.field private mBgArcPaint:Landroid/graphics/Paint;

.field private mBmpIcon:Landroid/graphics/Bitmap;

.field private mBmpPaint:Landroid/graphics/Paint;

.field private mCamera:Landroid/graphics/Camera;

.field private mCenter:Landroid/graphics/PointF;

.field private mCenterColor:I

.field private mCenterTextColor:Ljava/lang/String;

.field private mCenterTextSize:I

.field private mCenterTextSufSize:I

.field private mColors:[I

.field private mDefaultSize:I

.field private mDelayTimeSwitch:J

.field private mFormat:Ljava/text/DecimalFormat;

.field private mFromeDegress:F

.field private mHandler:Landroid/os/Handler;

.field private mIsShowAnimaed:Z

.field private mIsShowBmp:Z

.field private mIsStopped:Z

.field private mMinAngle:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mPercentSecond:F

.field private mRadius:I

.field private mRect:Landroid/graphics/RectF;

.field private mStorkWidth:I

.field private mThreadAnim:Ljava/lang/Runnable;

.field private mToDegress:F

.field private mTxtPaint:Landroid/text/TextPaint;

.field private mTxtSufPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDefaultSize:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterColor:I

    const v0, 0x7f070061

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSize:I

    const v0, 0x7f070047

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextColor:Ljava/lang/String;

    const v0, 0x7f0d001e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcColor:I

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeProgress:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeSwitch:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDelayTimeSwitch:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/h;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mThreadAnim:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDefaultSize:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterColor:I

    const v0, 0x7f070061

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSize:I

    const v0, 0x7f070047

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextColor:Ljava/lang/String;

    const v0, 0x7f0d001e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcColor:I

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeProgress:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeSwitch:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDelayTimeSwitch:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/h;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mThreadAnim:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDefaultSize:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterColor:I

    const v0, 0x7f070061

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSize:I

    const v0, 0x7f070047

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextColor:Ljava/lang/String;

    const v0, 0x7f0d001e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcColor:I

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeProgress:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeSwitch:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDelayTimeSwitch:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/h;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mThreadAnim:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f070092

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDefaultSize:I

    const v0, 0x7f070090

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mMinAngle:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterColor:I

    const v0, 0x7f070061

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSize:I

    const v0, 0x7f070047

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSufSize:I

    const-string v0, "#999999"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextColor:Ljava/lang/String;

    const v0, 0x7f0d001e

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcColor:I

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeProgress:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeSwitch:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDelayTimeSwitch:J

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFormat:Ljava/text/DecimalFormat;

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    iput v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F

    iput v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/viewholders/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/h;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mThreadAnim:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->startAnimSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)[I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrColorsSecond:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDelayTimeSwitch:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    return p1
.end method

.method static synthetic access$300(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercentSecond:F

    return v0
.end method

.method static synthetic access$400(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrDataSecond:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z

    return v0
.end method

.method static synthetic access$502(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z

    return p1
.end method

.method static synthetic access$602(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F

    return p1
.end method

.method static synthetic access$702(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;F)F
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F

    return p1
.end method

.method static synthetic access$800(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsStopped:Z

    return v0
.end method

.method static synthetic access$900(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mThreadAnim:Ljava/lang/Runnable;

    return-object v0
.end method

.method private calcAnglse()V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrData:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    div-float v0, v1, v0

    const/high16 v1, 0x43870000    # 270.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAngle:F

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAngle:F

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mMinAngle:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mMinAngle:F

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAngle:F

    :cond_0
    return-void
.end method

.method private dip2px(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private draw3DRotateBmp(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    cmpg-float v1, v1, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private draw3DRotateTxt(Landroid/graphics/Canvas;)V
    .locals 6

    const/16 v4, 0xff

    const/4 v2, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    const v3, 0x3c23d70a    # 0.01f

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v3

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v3, "%"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v2, v4, v2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v3, [I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mColors:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mColors:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v5

    new-array v1, v3, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAngle:F

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    aput v2, v1, v5

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v5, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x42fa0000    # 125.0f

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v2, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43070000    # 135.0f

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAngle:F

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawBgArc(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCenterText(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    const v3, 0x3c23d70a    # 0.01f

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v0, v2

    div-float v2, v0, v6

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    const-string v5, "%"

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    sub-float v6, v0, v2

    iget v7, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    iget-object v7, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v4, "%"

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v3, v5, v3

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v3

    sub-float v2, v0, v2

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v3

    sub-float v6, v2, v0

    iget v7, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    mul-float/2addr v6, v7

    sub-float v6, v2, v6

    iget-object v7, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string v4, "%"

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v3, v5, v3

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v3

    sub-float v0, v2, v0

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private drawIcon(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method private init()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowBmp:Z

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsStopped:Z

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSize:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mTxtSufPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenterTextSufSize:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBgArcColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const-string v0, "animateValue"

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeProgress:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/f;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string v0, "animValueSwitch"

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimateTimeSwitch:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/g;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimSwitch()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public getAnimateValue()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRadius:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRadius:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRadius:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->drawBgArc(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->drawArc(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRadius:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mRadius:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F

    iget v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mToDegress:F

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mFromeDegress:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->draw3DRotateBmp(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->draw3DRotateTxt(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mStorkWidth:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mDefaultSize:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->dip2px(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->resolveSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->resolveSize(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimValueSwitch(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueSwitch:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->postInvalidate()V

    return-void
.end method

.method public setAnimateValue(F)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->postInvalidate()V

    return-void
.end method

.method public setColorAndData([ILjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrColorsSecond:[I

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrDataSecond:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrDataSecond:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iput v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercentSecond:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrDataSecond:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float v1, v6, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrDataSecond:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    div-float v0, v1, v0

    mul-float/2addr v0, v7

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercentSecond:F

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mColors:[I

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrData:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrData:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iput v5, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mBmpIcon:Landroid/graphics/Bitmap;

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->calcAnglse()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->startAnimate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrData:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float v1, v6, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mArrData:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    div-float v0, v1, v0

    mul-float/2addr v0, v7

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mPercent:F

    goto :goto_1
.end method

.method public startAnimate()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsStopped:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsStopped:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->startAnimSwitch()V

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowAnimaed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimValueProgress:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsShowAnimaed:Z

    goto :goto_0
.end method

.method public stopAnimate()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mIsStopped:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaProgress:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mAnimaSwitch:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->mThreadAnim:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralArcView;->setAnimValueSwitch(F)V

    return-void
.end method
