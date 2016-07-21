.class public Lcom/dianxinos/lockscreen/j;
.super Lcom/dianxinos/lockscreen/fragment/a;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dianxinos/lockscreen/ad/extra/d;


# static fields
.field private static final c:Z


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

.field private f:Landroid/os/Handler;

.field private g:Lcom/dianxinos/lockscreen/a;

.field private h:Landroid/widget/FrameLayout;

.field private i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

.field private j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

.field private k:Landroid/view/ViewGroup;

.field private l:Z

.field private m:Z

.field private n:Landroid/os/PowerManager;

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Ljava/lang/Boolean;

.field private s:J

.field private t:Landroid/content/Context;

.field private u:Landroid/content/BroadcastReceiver;

.field private v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Lcom/dianxinos/lockscreen/ui/j;

.field private z:Lcom/dianxinos/lockscreen/ad/extra/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    sput-boolean v0, Lcom/dianxinos/lockscreen/j;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/fragment/a;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->f:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/j;->m:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/j;->o:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/j;->p:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/j;->q:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->r:Ljava/lang/Boolean;

    new-instance v0, Lcom/dianxinos/lockscreen/k;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/k;-><init>(Lcom/dianxinos/lockscreen/j;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->u:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/dianxinos/lockscreen/l;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/l;-><init>(Lcom/dianxinos/lockscreen/j;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->y:Lcom/dianxinos/lockscreen/ui/j;

    new-instance v0, Lcom/dianxinos/lockscreen/m;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/m;-><init>(Lcom/dianxinos/lockscreen/j;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->z:Lcom/dianxinos/lockscreen/ad/extra/e;

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/j;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/j;->r:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    sget v1, Lcom/dianxinos/lockscreen/z;->fade_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    sget v2, Lcom/dianxinos/lockscreen/z;->fade_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private a(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    invoke-virtual {v0, p1}, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->o()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->n()V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/j;Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/j;->a(Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/j;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/j;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->p:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a()Z

    move-result v2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, p1, v0}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->p:Z

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->performClick()Z

    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->n()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->getSourceType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->h:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic b(Lcom/dianxinos/lockscreen/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dianxinos/lockscreen/j;)Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/j;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/dianxinos/lockscreen/j;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/dianxinos/lockscreen/j;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/dianxinos/lockscreen/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/j;->q:J

    return-wide v0
.end method

.method static synthetic h(Lcom/dianxinos/lockscreen/j;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/dianxinos/lockscreen/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->r()V

    return-void
.end method

.method private l()V
    .locals 2

    sget v0, Lcom/dianxinos/lockscreen/ac;->lockscreen_settings:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/dianxinos/lockscreen/ac;->charge_setting_view:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->k:Landroid/view/ViewGroup;

    sget v0, Lcom/dianxinos/lockscreen/ac;->health_charge_slide_view:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->setUseTouchInside(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->setLockScreenLabel(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->n:Landroid/os/PowerManager;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_ads_area:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->h:Landroid/widget/FrameLayout;

    sget v1, Lcom/dianxinos/lockscreen/ac;->screen_lock_ad_item:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->setKeyguardLockState(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    invoke-virtual {v0, p0}, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_ads_area_drawer:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->y:Lcom/dianxinos/lockscreen/ui/j;

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->setListener(Lcom/dianxinos/lockscreen/ui/j;)V

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_ads_open:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->w:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_ads_delete:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->x:Landroid/widget/TextView;

    return-void
.end method

.method private m()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v1, "lsc"

    const-string v2, "lsdr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v1, "lsnc"

    const-string v2, "lsnondr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v1, "lsnc"

    const-string v2, "lsnonndr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->setDXClickListener(Lcom/dianxinos/lockscreen/ad/extra/d;)V

    invoke-direct {p0, v3}, Lcom/dianxinos/lockscreen/j;->a(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->c()V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->p()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->f()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v1, "lsadss"

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v2}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->getSourceType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/x;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method private p()V
    .locals 5

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dianxinos/lockscreen/aa;->lock_screen_ads_area_translation_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/j;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "LockScreen_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doShowAdAnimator, start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/j;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/a/j;->a(J)Lcom/nineoldandroids/a/j;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/j;->a()V

    return-void
.end method

.method private q()Z
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method private r()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/LockScreenContainer;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->b()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/DXViewPager;

    invoke-virtual {v0, v4}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->setNoScroll(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->k:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    invoke-virtual {v0, v4}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/lockscreen/j;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->g:Lcom/dianxinos/lockscreen/a;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/a;->a()Z

    move-result v1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->l:Z

    if-eq v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v3, "lsnoss"

    invoke-static {v2, v3, v0}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/j;->l:Z

    :cond_1
    iput-boolean v4, p0, Lcom/dianxinos/lockscreen/j;->m:Z

    return-void

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "LockScreen_"

    const-string v3, "json exception :"

    invoke-static {v2, v3, v0}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LockScreen_"

    const-string v1, "mAD click"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->v:Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;

    invoke-virtual {v1}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a()Z

    move-result v1

    const-string v2, "opcl"

    iget-object v3, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v3}, Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;->getSourceType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->r()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/dianxinos/lockscreen/LockScreenContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/LockScreenContainer;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->b()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->b()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    instance-of v2, v2, Lcom/dianxinos/lockscreen/ui/DXViewPager;

    if-eqz v2, :cond_0

    iput-boolean v5, p0, Lcom/dianxinos/lockscreen/j;->m:Z

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/LockScreenContainer;->b()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/DXViewPager;

    invoke-virtual {v0, v5}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->setNoScroll(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->g:Lcom/dianxinos/lockscreen/a;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->l:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/c;->b()Lcom/dianxinos/lockscreen/v;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/v;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->k:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v2, Lcom/dianxinos/lockscreen/n;

    invoke-direct {v2, p0}, Lcom/dianxinos/lockscreen/n;-><init>(Lcom/dianxinos/lockscreen/j;)V

    invoke-virtual {v0, v2}, Lcom/dianxinos/lockscreen/v;->a(Lcom/dianxinos/lockscreen/w;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->k:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/dianxinos/lockscreen/j;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v2, "lsnc"

    const-string v3, "lsnocsdr"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v1, "lsnc"

    const-string v2, "lsnoncsr"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v1, "lsnc"

    const-string v2, "lsnonncsr"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dianxinos/lockscreen/c/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "LockScreen_"

    const-string v1, "mContainer click"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "opcl"

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/j;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    :try_start_0
    sget v0, Lcom/dianxinos/lockscreen/ad;->lock_screen_slide_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->a:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->g:Lcom/dianxinos/lockscreen/a;

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->l()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ACTION_CLOSE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->o:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->a:Landroid/view/View;

    return-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/dianxinos/lockscreen/fragment/a;->onDestroy()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->c()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->a()Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/e;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->a()Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->b()V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/dianxinos/lockscreen/fragment/a;->onPause()V

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LockScreen_"

    const-string v1, "DXLockScreenFragment.onPause"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->o:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->b()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->j:Lcom/dianxinos/lockscreen/ui/AdLinearLayout;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dianxinos/lockscreen/j;->r:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->a()Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/e;)V

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/j;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dianxinos/lockscreen/j;->s:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/dianxinos/lockscreen/x;->b(Landroid/content/Context;J)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->e:Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->a()V

    invoke-super {p0}, Lcom/dianxinos/lockscreen/fragment/a;->onResume()V

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LockScreen_"

    const-string v1, "DXLockScreenFragment.onResume"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/dianxinos/lockscreen/j;->a(Z)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->g:Lcom/dianxinos/lockscreen/a;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LockScreen_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->n:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->n:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v4}, Lcom/dianxinos/lockscreen/j;->b(Z)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "LockScreen_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacy ad card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/lockscreen/j;->i:Lcom/dianxinos/lockscreen/ad/extra/BaseCardView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fill ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/j;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/j;->o:Z

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/dianxinos/lockscreen/j;->o:Z

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/j;->q:J

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/j;->r:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->a()Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/j;->z:Lcom/dianxinos/lockscreen/ad/extra/e;

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/e;)V

    :cond_5
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->h()V

    :goto_1
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/j;->m()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->a(Ljava/lang/Boolean;)V

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/j;->s:J

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/dianxinos/lockscreen/j;->t:Landroid/content/Context;

    const-string v1, "real"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method
