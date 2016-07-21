.class Lcom/google/android/gms/internal/xv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/aa",
        "<",
        "Lcom/google/android/gms/tagmanager/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xv;->a:Lcom/google/android/gms/internal/xu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/g;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/g;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/g;->c()Lcom/google/android/gms/tagmanager/a;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/xp;

    iget-object v2, p0, Lcom/google/android/gms/internal/xv;->a:Lcom/google/android/gms/internal/xu;

    invoke-static {v2}, Lcom/google/android/gms/internal/xu;->a(Lcom/google/android/gms/internal/xu;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/xv;->a:Lcom/google/android/gms/internal/xu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/xu;->a()Lcom/google/android/gms/internal/xr;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/xp;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/a;Lcom/google/android/gms/internal/xr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/xv;->a:Lcom/google/android/gms/internal/xu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xp;->a()Lcom/google/android/gms/internal/xr;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/xu;->a(Lcom/google/android/gms/internal/xu;Lcom/google/android/gms/internal/xr;)Lcom/google/android/gms/internal/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/xv;->a:Lcom/google/android/gms/internal/xu;

    invoke-static {v0}, Lcom/google/android/gms/internal/xu;->b(Lcom/google/android/gms/internal/xu;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/z;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/tagmanager/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xv;->a(Lcom/google/android/gms/tagmanager/g;)V

    return-void
.end method
