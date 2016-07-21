.class public Lcom/flurry/sdk/gb;
.super Lcom/flurry/sdk/gh;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private c:I

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gh;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    iput v1, p0, Lcom/flurry/sdk/gb;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/flurry/sdk/gb;->b:Lcom/flurry/sdk/go;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/go;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/go;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gb;->b:Lcom/flurry/sdk/go;

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gb;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gb;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go$a;)V

    :cond_1
    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/sdk/co;->q:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gb;->setAutoPlay(Z)V

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gb;->a(Lcom/flurry/sdk/au;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gb;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gb;->setVideoUri(Landroid/net/Uri;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/au;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/flurry/sdk/au;->j()Lcom/flurry/sdk/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/cj;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gb;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method public a(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/flurry/sdk/gh;->a(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing progress bar again. Cant play video as its not prepared yet."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gb;->showProgressDialog()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/flurry/sdk/gh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video prepared onVideoPrepared."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flurry/sdk/gb;->c:I

    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gb;->c:I

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gb;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/sdk/co;->j:J

    const v2, 0x466a6000    # 15000.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gb;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/sdk/co;->k:J

    :cond_1
    long-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gb;->c:I

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/flurry/sdk/gb;->c:I

    invoke-super {p0}, Lcom/flurry/sdk/gh;->b()V

    return-void
.end method

.method public c()V
    .locals 4

    invoke-super {p0}, Lcom/flurry/sdk/gh;->c()V

    iget-object v0, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video prepared suspendVideo."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    iget-object v0, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video prepared cleanupLayout."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gb;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->k()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gb;->c:I

    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    return v0
.end method

.method public initLayout()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gb;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gb;->showProgressDialog()V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/flurry/sdk/gh;->setAutoPlay(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gb;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    :goto_0
    iput v0, p0, Lcom/flurry/sdk/gb;->c:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/flurry/sdk/gb;->c:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method
