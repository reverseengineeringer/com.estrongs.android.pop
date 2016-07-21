.class public Lcom/facebook/ads/internal/view/d;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Landroid/widget/VideoView;

.field private b:Lcom/facebook/ads/internal/adapters/e;

.field private c:Lcom/facebook/ads/internal/view/d$a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d;->d()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v2, "displayRotation"

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "displayWidth"

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "displayHeight"

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "useNativeCloseButton"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "viewType"

    sget-object v1, Lcom/facebook/ads/InterstitialAdActivity$Type;->VIDEO:Lcom/facebook/ads/InterstitialAdActivity$Type;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "videoURL"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d;->getVideoURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoPlayReportURL"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d;->getVideoPlayReportURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "predefinedOrientationKey"

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/internal/view/d;->a(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Error occurred while loading fullscreen video activity."

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/b;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/util/c;->a(Lcom/facebook/ads/internal/util/b;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 8

    const/16 v7, 0x64

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/d;->i:F

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6}, Lcom/facebook/ads/internal/view/d;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/VideoView;

    invoke-direct {v2, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    invoke-virtual {v2, v6}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    new-instance v3, Lcom/facebook/ads/internal/view/d$1;

    invoke-direct {v3, p0, p0}, Lcom/facebook/ads/internal/view/d$1;-><init>(Lcom/facebook/ads/internal/view/d;Lcom/facebook/ads/internal/view/d;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->h:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/view/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d$2;-><init>(Lcom/facebook/ads/internal/view/d;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d;->h:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/facebook/ads/internal/adapters/e;

    const/16 v2, 0x32

    new-instance v3, Lcom/facebook/ads/internal/view/d$3;

    invoke-direct {v3, p0, p0}, Lcom/facebook/ads/internal/view/d$3;-><init>(Lcom/facebook/ads/internal/view/d;Lcom/facebook/ads/internal/view/d;)V

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/facebook/ads/internal/adapters/e;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/facebook/ads/internal/adapters/e$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->b:Lcom/facebook/ads/internal/adapters/e;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/internal/adapters/e;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->b:Lcom/facebook/ads/internal/adapters/e;

    const/16 v2, 0xfa

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/adapters/e;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e;->a()V

    new-instance v0, Lcom/facebook/ads/internal/view/d$4;

    invoke-direct {v0, p0, p0}, Lcom/facebook/ads/internal/view/d$4;-><init>(Lcom/facebook/ads/internal/view/d;Lcom/facebook/ads/internal/view/d;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d;->setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d$5;

    invoke-direct {v0, p0, p0}, Lcom/facebook/ads/internal/view/d$5;-><init>(Lcom/facebook/ads/internal/view/d;Lcom/facebook/ads/internal/view/d;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d;->setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d$a;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/d$a;-><init>(Lcom/facebook/ads/internal/view/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    invoke-direct {v0, v7, v7, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/d$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    new-instance v1, Lcom/facebook/ads/internal/view/d$6;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/d$6;-><init>(Lcom/facebook/ads/internal/view/d;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    new-instance v1, Lcom/facebook/ads/internal/view/d$7;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/d$7;-><init>(Lcom/facebook/ads/internal/view/d;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/d;->addView(Landroid/view/View;)V

    return-void
.end method

.method private e()V
    .locals 1

    const-class v0, Lcom/facebook/ads/NativeAdVideoActivity;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/d;->a(Ljava/lang/Class;)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d;->e()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/d;)Lcom/facebook/ads/internal/view/d$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    return-object v0
.end method

.method private setOnClickListenerInternal(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnTouchListenerInternal(Landroid/view/View$OnTouchListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d;->d:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Lcom/facebook/ads/internal/view/d$a;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->c:Lcom/facebook/ads/internal/view/d$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/d$a;->a(Lcom/facebook/ads/internal/view/d$a;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public getAutoplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/d;->g:Z

    return v0
.end method

.method public getVideoPlayReportURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSkipReportURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method getVolume()F
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/d;->i:F

    return v0
.end method

.method public setAutoplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/d;->g:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    return-void
.end method

.method public setVideoPlayReportURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d;->e:Ljava/lang/String;

    return-void
.end method

.method public setVideoSkipReportURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d;->f:Ljava/lang/String;

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d;->d:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d;->a:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method setVolume(F)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/d;->i:F

    return-void
.end method
