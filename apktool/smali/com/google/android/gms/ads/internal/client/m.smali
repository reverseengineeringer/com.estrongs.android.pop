.class public Lcom/google/android/gms/ads/internal/client/m;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/ads/internal/client/m;


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/util/client/a;

.field private final d:Lcom/google/android/gms/ads/internal/client/h;

.field private final e:Lcom/google/android/gms/ads/internal/client/n;

.field private final f:Lcom/google/android/gms/ads/internal/client/b;

.field private final g:Lcom/google/android/gms/internal/ey;

.field private final h:Lcom/google/android/gms/ads/internal/reward/client/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/m;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/m;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/m;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/m;->a(Lcom/google/android/gms/ads/internal/client/m;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/m;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/h;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/m;->d:Lcom/google/android/gms/ads/internal/client/h;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/n;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/m;->e:Lcom/google/android/gms/ads/internal/client/n;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/m;->f:Lcom/google/android/gms/ads/internal/client/b;

    new-instance v0, Lcom/google/android/gms/internal/ey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ey;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/m;->g:Lcom/google/android/gms/internal/ey;

    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/d;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/reward/client/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/m;->h:Lcom/google/android/gms/ads/internal/reward/client/d;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/util/client/a;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->e()Lcom/google/android/gms/ads/internal/client/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/m;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/ads/internal/client/m;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/ads/internal/client/m;->b:Lcom/google/android/gms/ads/internal/client/m;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Lcom/google/android/gms/ads/internal/client/h;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->e()Lcom/google/android/gms/ads/internal/client/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/m;->d:Lcom/google/android/gms/ads/internal/client/h;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/ads/internal/client/n;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->e()Lcom/google/android/gms/ads/internal/client/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/m;->e:Lcom/google/android/gms/ads/internal/client/n;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/ey;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->e()Lcom/google/android/gms/ads/internal/client/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/m;->g:Lcom/google/android/gms/internal/ey;

    return-object v0
.end method

.method private static e()Lcom/google/android/gms/ads/internal/client/m;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/m;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/m;->b:Lcom/google/android/gms/ads/internal/client/m;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
