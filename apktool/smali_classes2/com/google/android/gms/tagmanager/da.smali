.class Lcom/google/android/gms/tagmanager/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/db;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/cw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/da;->a:Lcom/google/android/gms/tagmanager/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/yn;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/yn;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/yj;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/yj;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cn;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yn;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yn;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cn;->e()Lcom/google/android/gms/tagmanager/cl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yn;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yn;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cl;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cn;->f()Lcom/google/android/gms/tagmanager/cl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yn;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yn;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cl;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
