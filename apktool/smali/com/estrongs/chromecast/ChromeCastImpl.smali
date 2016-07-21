.class public Lcom/estrongs/chromecast/ChromeCastImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/chromecast/ChromeCast;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "43597A76"

.field private static final DEBUG:Z = false

.field private static final ES_MIN_VERSION:I = 0xda

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:I = 0x1

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private isInited:Z

.field private mApiClient:Lcom/google/android/gms/common/api/n;

.field private mApplicationStarted:Z

.field private mCallback:Landroid/support/v7/media/MediaRouter$Callback;

.field private mCastListener:Lcom/google/android/gms/cast/k;

.field private mConnectionCallbacks:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

.field private mConnectionFailedListener:Lcom/google/android/gms/common/api/r;

.field private mConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/chromecast/ChromeCastConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/chromecast/CastDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/chromecast/RemoteMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayerState:I

.field private mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

.field private mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private mWaitingForReconnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mWaitingForReconnect:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->isInited:Z

    iput v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerState:I

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1002(Lcom/estrongs/chromecast/ChromeCastImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApplicationStarted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/CastDeviceInfo;)Lcom/estrongs/chromecast/CastDeviceInfo;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/chromecast/ChromeCastImpl;->attachMediaChannel()V

    return-void
.end method

.method static synthetic access$1200(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/cast/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/estrongs/chromecast/ChromeCastImpl;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/estrongs/chromecast/ChromeCastImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/chromecast/ChromeCastImpl;->launchReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/common/api/n;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    return-object v0
.end method

.method static synthetic access$800(Lcom/estrongs/chromecast/ChromeCastImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mWaitingForReconnect:Z

    return v0
.end method

.method static synthetic access$802(Lcom/estrongs/chromecast/ChromeCastImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mWaitingForReconnect:Z

    return p1
.end method

.method static synthetic access$900(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/chromecast/ChromeCastImpl;->reattachMediaChannel()V

    return-void
.end method

.method private attachMediaChannel()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/cast/ak;

    invoke-direct {v0}, Lcom/google/android/gms/cast/ak;-><init>()V

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    new-instance v1, Lcom/estrongs/chromecast/ChromeCastImpl$2;

    invoke-direct {v1, p0}, Lcom/estrongs/chromecast/ChromeCastImpl$2;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/cast/aw;)V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    new-instance v1, Lcom/estrongs/chromecast/ChromeCastImpl$3;

    invoke-direct {v1, p0}, Lcom/estrongs/chromecast/ChromeCastImpl$3;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/cast/at;)V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/ak;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/cast/l;)V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ak;->d(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    new-instance v1, Lcom/estrongs/chromecast/ChromeCastImpl$4;

    invoke-direct {v1, p0}, Lcom/estrongs/chromecast/ChromeCastImpl$4;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/w;->a(Lcom/google/android/gms/common/api/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set up media channel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private detachMediaChannel()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/ak;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to detach media channel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchReceiver()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/estrongs/chromecast/ChromeCastImpl$1;

    invoke-direct {v0, p0}, Lcom/estrongs/chromecast/ChromeCastImpl$1;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mCastListener:Lcom/google/android/gms/cast/k;

    new-instance v0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/ChromeCastImpl$1;)V

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionCallbacks:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    new-instance v0, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionFailedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionFailedListener;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/ChromeCastImpl$1;)V

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionFailedListener:Lcom/google/android/gms/common/api/r;

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;

    invoke-virtual {v0}, Lcom/estrongs/chromecast/CastDeviceInfo;->getRouteInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mCastListener:Lcom/google/android/gms/cast/k;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/k;)Lcom/google/android/gms/cast/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/o;

    iget-object v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/cast/a;->a:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/j;->a()Lcom/google/android/gms/cast/i;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionCallbacks:Lcom/estrongs/chromecast/ChromeCastImpl$ConnectionCallbacks;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionFailedListener:Lcom/google/android/gms/common/api/r;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/r;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->b()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed launchReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reattachMediaChannel()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    iget-object v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/ak;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/cast/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setup media channel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "Failed to setup media channel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->isInited:Z

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/chromecast/ChromeCastImpl;->teardown()V

    return-void
.end method

.method public getConnectedDevice()Lcom/estrongs/chromecast/CastDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/chromecast/CastDeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/CastDevice;->b(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/estrongs/chromecast/CastDeviceInfoImpl;

    invoke-direct {v3, v0}, Lcom/estrongs/chromecast/CastDeviceInfoImpl;-><init>(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getIdleReason()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->c()Lcom/google/android/gms/cast/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->c()Lcom/google/android/gms/cast/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ah;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMediaPlayerState()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->c()Lcom/google/android/gms/cast/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->c()Lcom/google/android/gms/cast/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ah;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerState:I

    goto :goto_0
.end method

.method public getMediaStreamDuration()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getMediaStreamPosition()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVolume()D
    .locals 3

    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/d;->b(Lcom/google/android/gms/common/api/n;)D
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "Unable to change volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public init()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->isInited:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRouter:Landroid/support/v7/media/MediaRouter;

    new-instance v1, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    const-string v2, "43597A76"

    invoke-static {v2}, Lcom/google/android/gms/cast/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    new-instance v1, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/chromecast/ChromeCastImpl$MyMediaRouterCallback;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;Lcom/estrongs/chromecast/ChromeCastImpl$1;)V

    iput-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->isInited:Z

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->e()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/chromecast/MediaMetaData;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "image"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v2

    :goto_1
    if-eqz v1, :cond_6

    new-instance v0, Lcom/google/android/gms/cast/ac;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Lcom/google/android/gms/cast/ac;-><init>(I)V

    :goto_2
    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v4, p2}, Lcom/google/android/gms/cast/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_5

    iget-object v4, p4, Lcom/estrongs/chromecast/MediaMetaData;->albumArtist:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    iget-object v5, p4, Lcom/estrongs/chromecast/MediaMetaData;->albumArtist:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/cast/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p4, Lcom/estrongs/chromecast/MediaMetaData;->albumTitle:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    iget-object v5, p4, Lcom/estrongs/chromecast/MediaMetaData;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/cast/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p4, Lcom/estrongs/chromecast/MediaMetaData;->title:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    iget-object v5, p4, Lcom/estrongs/chromecast/MediaMetaData;->title:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/cast/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v4, p4, Lcom/estrongs/chromecast/MediaMetaData;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v4, Lcom/google/android/gms/common/images/WebImage;

    iget-object v5, p4, Lcom/estrongs/chromecast/MediaMetaData;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/ac;->a(Lcom/google/android/gms/common/images/WebImage;)V

    :cond_5
    if-eqz v1, :cond_8

    new-instance v1, Lcom/google/android/gms/cast/ab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/ab;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/cast/ab;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/ab;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/ab;->a(I)Lcom/google/android/gms/cast/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/ab;->a(Lcom/google/android/gms/cast/ac;)Lcom/google/android/gms/cast/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ab;->a()Lcom/google/android/gms/cast/aa;

    move-result-object v0

    :goto_3
    :try_start_0
    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    iget-object v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/cast/aa;Z)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    new-instance v1, Lcom/estrongs/chromecast/ChromeCastImpl$5;

    invoke-direct {v1, p0}, Lcom/estrongs/chromecast/ChromeCastImpl$5;-><init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/w;->a(Lcom/google/android/gms/common/api/aa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "Problem opening media during loading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/RemoteMediaPlayerListener;

    const/16 v3, -0x3e8

    invoke-interface {v0, v3}, Lcom/estrongs/chromecast/RemoteMediaPlayerListener;->onStatusUpdated(I)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    const-string v0, "audio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/google/android/gms/cast/ac;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lcom/google/android/gms/cast/ac;-><init>(I)V

    goto/16 :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/gms/cast/ac;

    invoke-direct {v0, v2}, Lcom/google/android/gms/cast/ac;-><init>(I)V

    goto/16 :goto_2

    :cond_8
    new-instance v1, Lcom/google/android/gms/cast/ab;

    invoke-direct {v1, p1}, Lcom/google/android/gms/cast/ab;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/cast/ab;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/ab;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/ab;->a(I)Lcom/google/android/gms/cast/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/ab;->a(Lcom/google/android/gms/cast/ac;)Lcom/google/android/gms/cast/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ab;->a()Lcom/google/android/gms/cast/aa;

    move-result-object v0

    goto :goto_3

    :cond_9
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto/16 :goto_1
.end method

.method public mediaPause()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;

    goto :goto_0
.end method

.method public mediaPlay()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ak;->c(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;

    goto :goto_0
.end method

.method public mediaSeek(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/common/api/n;J)Lcom/google/android/gms/common/api/w;

    goto :goto_0
.end method

.method public mediaStop()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->c()Lcom/google/android/gms/cast/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ak;->b(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;

    goto :goto_0
.end method

.method public removeConnectionListener(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDeviceListener(Lcom/estrongs/chromecast/CastDeviceListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMediaPlayerListener(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mMediaPlayerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectDevice(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p1}, Lcom/estrongs/chromecast/CastDeviceInfo;->getRouteInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public setVolume(D)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/n;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->TAG:Ljava/lang/String;

    const-string v2, "unable to set volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startScan()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    return-void
.end method

.method public stopScan()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    return-void
.end method

.method public teardown()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApplicationStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;

    invoke-direct {p0}, Lcom/estrongs/chromecast/ChromeCastImpl;->detachMediaChannel()V

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/n;->c()V

    :cond_0
    iput-boolean v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApplicationStarted:Z

    :cond_1
    iput-object v3, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    :cond_2
    iput-object v3, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mSelectedDeviceInfo:Lcom/estrongs/chromecast/CastDeviceInfo;

    iput-boolean v2, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mWaitingForReconnect:Z

    sget-object v1, Lcom/estrongs/chromecast/ChromeCastImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/ChromeCastConnectionListener;

    invoke-interface {v0}, Lcom/estrongs/chromecast/ChromeCastConnectionListener;->onDisconnected()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
