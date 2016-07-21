.class public Lcom/facebook/ads/InterstitialAdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final PREDEFINED_ORIENTATION_KEY:Ljava/lang/String; = "predefinedOrientationKey"

.field public static final VIDEO_PLAY_REPORT_URL:Ljava/lang/String; = "videoPlayReportURL"

.field public static final VIDEO_URL:Ljava/lang/String; = "videoURL"

.field public static final VIEW_TYPE:Ljava/lang/String; = "viewType"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Lcom/facebook/ads/internal/g;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/facebook/ads/InterstitialAdActivity$Type;

.field private i:Lcom/facebook/ads/internal/view/i;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/InterstitialAdActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p2, p1, :cond_0

    move v1, v2

    :goto_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_1
    packed-switch v0, :pswitch_data_1

    invoke-virtual {p0, v3}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "lastRequestedOrientation"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    const-string v0, "adInterstitialUniqueId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/view/i;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "displayWidth"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->d:I

    const-string v0, "displayHeight"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:I

    const-string v0, "adInterstitialUniqueId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/view/i;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/InterstitialAdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/InterstitialAdActivity;)Lcom/facebook/ads/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/i;->c()V

    const-string v0, "com.facebook.ads.interstitial.dismissed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/InterstitialAdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/facebook/ads/InterstitialAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "useNativeCloseButton"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    const v2, 0x186a2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/g;->setId(I)V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->b:Lcom/facebook/ads/internal/g;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$1;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v0, "viewType"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAdActivity$Type;

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->h:Lcom/facebook/ads/InterstitialAdActivity$Type;

    sget-object v0, Lcom/facebook/ads/InterstitialAdActivity$4;->a:[I

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAdActivity;->h:Lcom/facebook/ads/InterstitialAdActivity$Type;

    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAdActivity$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/facebook/ads/internal/view/g;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$3;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$3;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/internal/view/g;-><init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/view/i$a;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    :goto_0
    const-string v0, "predefinedOrientationKey"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->j:I

    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/InterstitialAdActivity;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string v0, "com.facebook.ads.interstitial.displayed"

    invoke-direct {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->a(Ljava/lang/String;)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/facebook/ads/internal/view/n;

    new-instance v2, Lcom/facebook/ads/InterstitialAdActivity$2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InterstitialAdActivity$2;-><init>(Lcom/facebook/ads/InterstitialAdActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/internal/view/n;-><init>(Lcom/facebook/ads/InterstitialAdActivity;Lcom/facebook/ads/internal/view/i$a;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/i;->a()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/i;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->i:Lcom/facebook/ads/internal/view/i;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/i;->a(Landroid/os/Bundle;)V

    const-string v0, "lastRequestedOrientation"

    iget v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "adInterstitialUniqueId"

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->j:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->j:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->f:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->d:I

    iget v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->e:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/InterstitialAdActivity;->a(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAdActivity;->setRequestedOrientation(I)V

    iput v1, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/InterstitialAdActivity;->c:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
