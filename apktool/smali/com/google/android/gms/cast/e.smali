.class public final Lcom/google/android/gms/cast/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/h;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/h;-><init>(Lcom/google/android/gms/cast/e;Lcom/google/android/gms/common/api/n;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/g;-><init>(Lcom/google/android/gms/cast/e;Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/f;-><init>(Lcom/google/android/gms/cast/e;Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/z;

    invoke-direct {v0}, Lcom/google/android/gms/cast/z;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/z;->a(Z)Lcom/google/android/gms/cast/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/z;->a()Lcom/google/android/gms/cast/LaunchOptions;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;D)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/v;->a:Lcom/google/android/gms/common/api/i;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/cast/internal/g;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/v;->a:Lcom/google/android/gms/common/api/i;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/cast/internal/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/cast/l;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/internal/v;->a:Lcom/google/android/gms/common/api/i;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/cast/internal/g;->a(Ljava/lang/String;Lcom/google/android/gms/cast/l;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "service error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/n;)D
    .locals 2

    sget-object v0, Lcom/google/android/gms/cast/internal/v;->a:Lcom/google/android/gms/common/api/i;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/h;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/g;->f()D

    move-result-wide v0

    return-wide v0
.end method
