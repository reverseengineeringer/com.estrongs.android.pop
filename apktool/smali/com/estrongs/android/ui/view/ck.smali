.class public Lcom/estrongs/android/ui/view/ck;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/view/View;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/estrongs/android/ui/view/cn;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ck;->j:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ck;->a:Landroid/widget/RelativeLayout;

    iput p3, p0, Lcom/estrongs/android/ui/view/ck;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ck;->d:Lcom/estrongs/android/ui/view/cn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ck;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/ck;->g:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/ck;->h:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/ck;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ck;)Lcom/estrongs/android/ui/view/cn;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->d:Lcom/estrongs/android/ui/view/cn;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ck;->f()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/view/cl;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/cl;-><init>(Lcom/estrongs/android/ui/view/ck;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ck;->e()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ck;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/ck;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ck;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ck;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/ck;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ck;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/ck;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/ck;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->c:Ljava/util/Map;

    return-object v0
.end method

.method private e()Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private f()Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/android/ui/e/a;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/a;

    instance-of v1, v0, Lcom/estrongs/android/ui/e/jm;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/ui/e/jm;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/jm;->h()V

    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/a;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ck;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/a;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ck;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "ToolBarSwitcher"

    const-string v1, "Illegal command!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/e/a;

    move-result-object v1

    instance-of v0, v1, Lcom/estrongs/android/ui/e/cq;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/ui/e/cq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/cq;->l()V

    :cond_3
    const-string v0, "normal_mode"

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->j:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->j:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->j:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->j:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESAbsToolbarActivity;->a(Z)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/ui/view/ck;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/ck;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ck;->h:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/a;->g()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ck;->i:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/a;->a()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/view/ck;->g:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/e/a;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/estrongs/android/ui/e/jm;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/a;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ck;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ck;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;)Lcom/estrongs/android/ui/e/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/a;->f()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
