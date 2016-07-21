.class public abstract Lcom/flurry/sdk/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/gw;
.implements Lcom/flurry/sdk/hg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bo;->c(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/flurry/sdk/bn;
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->c()Lcom/flurry/sdk/bn;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/sdk/gt;
.end method

.method public a(Landroid/content/Context;Lcom/flurry/sdk/s;)Lcom/flurry/sdk/hf;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->d()Lcom/flurry/sdk/br;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/flurry/sdk/bo;->a(Landroid/content/Context;Lcom/flurry/sdk/br;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bo;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/bo;->a(Landroid/content/Context;Lcom/flurry/sdk/s;Landroid/os/Bundle;)Lcom/flurry/sdk/hf;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;Lcom/flurry/sdk/s;Landroid/os/Bundle;)Lcom/flurry/sdk/hf;
.end method

.method protected a(Landroid/content/Context;Lcom/flurry/sdk/br;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->a()Lcom/flurry/sdk/bn;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/flurry/sdk/bn;->a(Landroid/content/Context;Lcom/flurry/sdk/br;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bo;->c(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcom/flurry/sdk/bn;
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->c()Lcom/flurry/sdk/bn;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/flurry/sdk/s;)Lcom/flurry/sdk/gt;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->e()Lcom/flurry/sdk/br;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/flurry/sdk/bo;->b(Landroid/content/Context;Lcom/flurry/sdk/br;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/bo;->b(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v2

    invoke-static {v2}, Lcom/flurry/sdk/fd;->a(Lcom/flurry/sdk/co;)Lcom/flurry/android/AdCreative;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/flurry/sdk/bo;->a(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)Lcom/flurry/sdk/gt;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;Lcom/flurry/sdk/br;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->b()Lcom/flurry/sdk/bn;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/flurry/sdk/bn;->a(Landroid/content/Context;Lcom/flurry/sdk/br;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p1}, Lcom/flurry/sdk/lq;->e(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/flurry/sdk/bn;
    .locals 1

    new-instance v0, Lcom/flurry/sdk/bm;

    invoke-direct {v0}, Lcom/flurry/sdk/bm;-><init>()V

    return-object v0
.end method

.method protected d()Lcom/flurry/sdk/br;
    .locals 6

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->g()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->i()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->j()Ljava/util/List;

    move-result-object v5

    new-instance v0, Lcom/flurry/sdk/br;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/br;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected e()Lcom/flurry/sdk/br;
    .locals 6

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->l()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->m()Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/flurry/sdk/br;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/br;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bk;",
            ">;"
        }
    .end annotation
.end method

.method protected h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract j()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract k()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/bk;",
            ">;"
        }
    .end annotation
.end method

.method protected l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/flurry/sdk/bo;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract n()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract o()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
