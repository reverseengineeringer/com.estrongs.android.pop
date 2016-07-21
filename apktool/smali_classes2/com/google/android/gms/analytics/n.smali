.class public Lcom/google/android/gms/analytics/n;
.super Lcom/google/android/gms/internal/wg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/wg",
        "<",
        "Lcom/google/android/gms/analytics/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/analytics/internal/ab;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/ab;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/ab;->h()Lcom/google/android/gms/internal/wh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/ab;->d()Lcom/google/android/gms/internal/te;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/wg;-><init>(Lcom/google/android/gms/internal/wh;Lcom/google/android/gms/internal/te;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/n;->b:Lcom/google/android/gms/analytics/internal/ab;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/wd;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ra;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wd;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/wf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ra;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/n;->b:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ab;->p()Lcom/google/android/gms/analytics/internal/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/at;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ra;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/n;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ra;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/n;->b:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ab;->o()Lcom/google/android/gms/analytics/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ra;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ra;->a(Z)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/n;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/n;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/o;

    iget-object v2, p0, Lcom/google/android/gms/analytics/n;->b:Lcom/google/android/gms/analytics/internal/ab;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/o;-><init>(Lcom/google/android/gms/analytics/internal/ab;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/n;->c:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/analytics/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/n;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/wo;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method i()Lcom/google/android/gms/analytics/internal/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/n;->b:Lcom/google/android/gms/analytics/internal/ab;

    return-object v0
.end method

.method public j()Lcom/google/android/gms/internal/wd;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/n;->k()Lcom/google/android/gms/internal/wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wd;->a()Lcom/google/android/gms/internal/wd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/n;->b:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ab;->q()Lcom/google/android/gms/analytics/internal/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/am;->c()Lcom/google/android/gms/internal/ws;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wd;->a(Lcom/google/android/gms/internal/wf;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/n;->b:Lcom/google/android/gms/analytics/internal/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/ab;->r()Lcom/google/android/gms/analytics/internal/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/bd;->b()Lcom/google/android/gms/internal/wu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wd;->a(Lcom/google/android/gms/internal/wf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/n;->b(Lcom/google/android/gms/internal/wd;)V

    return-object v0
.end method
