.class public Lcom/google/android/gms/internal/rt;
.super Lcom/google/android/gms/common/internal/ab;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/ab",
        "<",
        "Lcom/google/android/gms/internal/rx;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/cast/internal/w;


# instance fields
.field private e:Lcom/google/android/gms/cast/s;

.field private f:Lcom/google/android/gms/cast/CastDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/internal/w;

    const-string v1, "CastRemoteDisplayClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/rt;->a:Lcom/google/android/gms/cast/internal/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/w;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V
    .locals 7

    const/16 v3, 0x53

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/ab;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/w;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;)V

    sget-object v0, Lcom/google/android/gms/internal/rt;->a:Lcom/google/android/gms/cast/internal/w;

    const-string v1, "instance created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/rt;->e:Lcom/google/android/gms/cast/s;

    iput-object p4, p0, Lcom/google/android/gms/internal/rt;->f:Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/rx;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ry;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/rx;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.service.START"

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/ru;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/rt;->a:Lcom/google/android/gms/cast/internal/w;

    const-string v1, "stopRemoteDisplay"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rt;->t()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/rx;->a(Lcom/google/android/gms/internal/ru;)V

    return-void
.end method

.method public synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rt;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/rx;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    return-object v0
.end method

.method public binderDied()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/gms/internal/rt;->a:Lcom/google/android/gms/cast/internal/w;

    const-string v1, "disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/rt;->e:Lcom/google/android/gms/cast/s;

    iput-object v3, p0, Lcom/google/android/gms/internal/rt;->f:Lcom/google/android/gms/cast/CastDevice;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/rt;->t()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/rx;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/ab;->c()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/ab;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/ab;->c()V

    throw v0
.end method
