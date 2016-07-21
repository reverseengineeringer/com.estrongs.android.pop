.class public abstract Lcom/google/android/gms/internal/wg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/wg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/wd;

.field private final b:Lcom/google/android/gms/internal/wh;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/we;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/wh;Lcom/google/android/gms/internal/te;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/wg;->b:Lcom/google/android/gms/internal/wh;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wg;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/wd;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/wd;-><init>(Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/te;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wd;->k()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wg;->a:Lcom/google/android/gms/internal/wd;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/wd;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/google/android/gms/internal/wd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/we;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/we;->a(Lcom/google/android/gms/internal/wg;Lcom/google/android/gms/internal/wd;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()Lcom/google/android/gms/internal/wd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wg;->a:Lcom/google/android/gms/internal/wd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wd;->a()Lcom/google/android/gms/internal/wd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/wg;->b(Lcom/google/android/gms/internal/wd;)V

    return-object v0
.end method

.method public k()Lcom/google/android/gms/internal/wd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wg;->a:Lcom/google/android/gms/internal/wd;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/wo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/wg;->a:Lcom/google/android/gms/internal/wd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wd;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcom/google/android/gms/internal/wh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wg;->b:Lcom/google/android/gms/internal/wh;

    return-object v0
.end method
