.class public Lcom/flurry/sdk/gg;
.super Lcom/flurry/sdk/gh;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private c:I

.field private d:Z

.field private e:F

.field private f:F

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gh;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    iput-boolean v0, p0, Lcom/flurry/sdk/gg;->d:Z

    iput v1, p0, Lcom/flurry/sdk/gg;->e:F

    iput v1, p0, Lcom/flurry/sdk/gg;->f:F

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/go;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/go;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/go;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/go;

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/go;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1, p0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go$a;)V

    :cond_1
    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-boolean v1, v1, Lcom/flurry/sdk/co;->q:Z

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gg;->setAutoPlay(Z)V

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gg;->a(Lcom/flurry/sdk/au;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gg;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/gg;->setVideoUri(Landroid/net/Uri;)V

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flurry/sdk/gg;->b(Lcom/flurry/sdk/au;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/flurry/sdk/gg;->d:Z

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/co;->x:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/flurry/sdk/gg;->e:F

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/co;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/flurry/sdk/gg;->f:F

    return-void
.end method

.method private a(Lcom/flurry/sdk/au;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/flurry/sdk/au;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/flurry/sdk/au;->g()Lcom/flurry/sdk/fm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/fm;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/flurry/sdk/ma;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    const-string v2, "Reward granted: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->h(Z)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/flurry/sdk/gh;->a(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing progress bar again. Cant play video as its not prepared yet."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->showProgressDialog()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/flurry/sdk/gh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video prepared onVideoPrepared."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/gh;->a(Ljava/lang/String;FF)V

    const v0, 0x453b8000    # 3000.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/gg;->d:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    or-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/sdk/co;->j:J

    const v2, 0x466a6000    # 15000.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/sdk/co;->k:J

    :cond_2
    long-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/gg;->f:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/flurry/sdk/gg;->f:F

    mul-float/2addr v1, p2

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_4

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->i()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/flurry/sdk/gg;->d()V

    sget-object v0, Lcom/flurry/sdk/bb;->M:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gg;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    return-void

    :cond_6
    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    invoke-super {p0}, Lcom/flurry/sdk/gh;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/flurry/sdk/gh;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/flurry/sdk/gg;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/bb;->M:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gg;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    invoke-super {p0}, Lcom/flurry/sdk/gh;->c()V

    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video prepared suspendVideo."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cleanupLayout()V
    .locals 4

    invoke-super {p0}, Lcom/flurry/sdk/gh;->cleanupLayout()V

    iget-object v0, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gg;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video prepared cleanupLayout."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gg;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getViewParams()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->k()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    return v0
.end method

.method public initLayout()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gg;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->showProgressDialog()V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/flurry/sdk/gh;->setAutoPlay(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gg;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/gg;->c:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/flurry/sdk/gg;->c:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
