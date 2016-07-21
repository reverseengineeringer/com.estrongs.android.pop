.class public abstract Lcom/flurry/sdk/gh;
.super Lcom/flurry/sdk/gt;

# interfaces
.implements Lcom/flurry/sdk/go$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/flurry/sdk/go;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gt;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->d:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->x()V

    return-void
.end method

.method private d()Z
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdFrameIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdUnit()Lcom/flurry/sdk/co;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/co;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->d()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->b(I)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->b()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    const-string v1, "VideoClose: Firing video close."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->w:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    const-string v2, "Video Close clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->onViewClose()V

    return-void
.end method

.method protected a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget v0, v0, Lcom/flurry/sdk/co;->z:I

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v2

    long-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {v2}, Lcom/flurry/sdk/gk;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/bb;->L:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->b(Z)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/go;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/go;->c(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->d:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->showProgressDialog()V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x3

    sget-object v0, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Prepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/go;->c(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/gh;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->dismissProgressDialog()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/flurry/sdk/gh;->c:Z

    if-nez v1, :cond_2

    if-le v0, v3, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->a(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->f:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->f(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->dismissProgressDialog()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;FF)V
    .locals 2

    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/gh;->a(FF)V

    invoke-virtual {p0, p2, p3}, Lcom/flurry/sdk/gh;->c(FF)V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/go;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->e()V

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->onViewError()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/ba;->q:Lcom/flurry/sdk/ba;

    invoke-virtual {v2}, Lcom/flurry/sdk/ba;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "frameworkError"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "implError"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->y()V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    const-string v2, "Video Play clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->a(I)V

    return-void
.end method

.method protected b(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gk;->a(Z)V

    sget-object v0, Lcom/flurry/sdk/bb;->i:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeaconTest: Video start event fired, adObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    sget-object v0, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video Completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gh;->d()Z

    move-result v0

    sget-object v1, Lcom/flurry/sdk/bb;->j:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeaconTest: Video completed event fired, adObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->y()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->v()V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x3

    :try_start_0
    sget-object v2, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Getting video from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/flurry/sdk/ab;->b(Lcom/flurry/sdk/s;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: Error using cached file. Loading with url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    const-string v3, "Precaching: Error accessing cached file."

    invoke-static {v5, v2, v3, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    const-string v2, "Video suspend: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->u()V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->e()V

    :cond_0
    return-void
.end method

.method protected c(FF)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v5}, Lcom/flurry/sdk/gk;->a(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/gh;->b(FF)V

    :cond_2
    div-float v1, p2, p1

    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->e()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v5}, Lcom/flurry/sdk/gk;->d(Z)V

    sget-object v2, Lcom/flurry/sdk/bb;->H:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    sget-object v2, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeaconTest: Video 1st quartile event fired, adObj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->f()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v5}, Lcom/flurry/sdk/gk;->e(Z)V

    sget-object v2, Lcom/flurry/sdk/bb;->I:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    sget-object v2, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BeaconTest: Video 2nd quartile event fired, adObj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/flurry/sdk/gk;->f(Z)V

    sget-object v0, Lcom/flurry/sdk/bb;->J:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    sget-object v0, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeaconTest: Video 3rd quartile event fired, adObj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayPause: pauseVideo() Video paused position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v4

    invoke-interface {v4}, Lcom/flurry/sdk/s;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gk;->a(I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    :cond_0
    return-void
.end method

.method public cleanupLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->c()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->z()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gk;->a(I)V

    :cond_0
    return-void
.end method

.method public getVideoCompletedFromStateOrVideo()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/flurry/sdk/gk;->h()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getVideoController()Lcom/flurry/sdk/go;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    return-object v0
.end method

.method public getVideoPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    return v0
.end method

.method protected abstract getViewParams()I
.end method

.method public initLayout()V
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->showProgressDialog()V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/gt;->onActivityDestroy()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->s()V

    return-void
.end method

.method public onActivityPause()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/gt;->onActivityPause()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->u()V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    invoke-super {p0}, Lcom/flurry/sdk/gt;->onActivityResume()V

    iget-boolean v0, p0, Lcom/flurry/sdk/gh;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/flurry/sdk/gh;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->a(I)V

    :cond_1
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/gt;->onActivityStop()V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->c()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/flurry/sdk/gt;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->x()V

    return-void
.end method

.method protected onViewLoadTimeout()V
    .locals 2

    sget-object v0, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method protected s()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->g()V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video setAutoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/flurry/sdk/gh;->c:Z

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video set video uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v1

    iget-object v2, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->l()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/go;->a(Landroid/net/Uri;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->l()I

    move-result v0

    goto :goto_0
.end method

.method public u()V
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    const-string v2, "Video pause: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/gh;->e()V

    invoke-direct {p0}, Lcom/flurry/sdk/gh;->f()V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0}, Lcom/flurry/sdk/go;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->d:Z

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/gr;

    invoke-direct {v0}, Lcom/flurry/sdk/gr;-><init>()V

    sget-object v1, Lcom/flurry/sdk/gr$a;->b:Lcom/flurry/sdk/gr$a;

    iput-object v1, v0, Lcom/flurry/sdk/gr;->e:Lcom/flurry/sdk/gr$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/gr;->b()V

    return-void
.end method

.method public w()V
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    const-string v2, "Video More Info clicked: "

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/bb;->h:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/gh;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    return-void
.end method

.method protected x()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/ez;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->setOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->setOrientation(I)V

    goto :goto_0
.end method

.method protected y()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gh;->setOrientation(I)V

    return-void
.end method

.method public z()V
    .locals 5

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->a()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->k()Lcom/flurry/sdk/gq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/gq;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/gh;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayPause: onResumeVideoWithState() Play video position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adObject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v4

    invoke-interface {v4}, Lcom/flurry/sdk/s;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/go;->a(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gh;->b:Lcom/flurry/sdk/go;

    invoke-virtual {p0}, Lcom/flurry/sdk/gh;->getViewParams()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/go;->c(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/gh;->d:Z

    :cond_0
    return-void
.end method
