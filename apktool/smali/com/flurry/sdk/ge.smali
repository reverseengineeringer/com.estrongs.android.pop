.class public abstract Lcom/flurry/sdk/ge;
.super Lcom/flurry/sdk/gh;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ge;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gh;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ge;->a:Z

    return-void
.end method

.method private getValueForAutoplayMacro()Z
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getVideoReplayCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(FF)V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/ge;->b:Lcom/flurry/sdk/go;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-wide v0, v0, Lcom/flurry/sdk/co;->l:J

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v2

    long-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/ge;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/flurry/sdk/gk;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/bb;->L:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/gk;->b(Z)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ge;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeaconTest: Video view event fired, adObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract a(Lcom/flurry/sdk/ge$a;I)V
.end method

.method public a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/gk;->k(Z)V

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/au;->a(Lcom/flurry/sdk/gk;)V

    return-void
.end method

.method protected b(FF)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flurry/sdk/gk;->a(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/flurry/sdk/fg;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ge;->getValueForAutoplayMacro()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/fg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/ge;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v2}, Lcom/flurry/sdk/go;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v1, Lcom/flurry/sdk/bb;->i:Lcom/flurry/sdk/bb;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ge;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ge;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeaconTest: Video start event fired, adObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " muted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/ge;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v3}, Lcom/flurry/sdk/go;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Lcom/flurry/sdk/fg;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public getVideoReplayCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->n()I

    move-result v0

    return v0
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method protected getViewParams()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method

.method public abstract n()V
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->l()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method public abstract setVideoUrl(Ljava/lang/String;)V
.end method

.method public t()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/ge;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ab;->g()V

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ge;->c:Ljava/lang/String;

    const-string v2, "ClearCache: Video cache cleared."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
