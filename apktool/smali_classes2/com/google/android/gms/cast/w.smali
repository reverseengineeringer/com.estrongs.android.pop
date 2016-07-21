.class Lcom/google/android/gms/cast/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/aa",
        "<",
        "Lcom/google/android/gms/cast/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/w;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/cast/t;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/cast/t;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/w;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "Unable to stop the remote display, result unsuccessful"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/w;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Landroid/view/Display;)Landroid/view/Display;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/w;->a:Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;

    const-string v1, "remote display stopped"

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;->a(Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onResult(Lcom/google/android/gms/common/api/z;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/t;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/cast/t;)V

    return-void
.end method
