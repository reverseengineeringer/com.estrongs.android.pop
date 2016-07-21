.class Lcom/google/android/gms/ads/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/e;

.field final synthetic b:Lcom/google/android/gms/ads/internal/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/w;Lcom/google/android/gms/ads/internal/formats/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/z;->b:Lcom/google/android/gms/ads/internal/w;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/z;->a:Lcom/google/android/gms/ads/internal/formats/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/z;->b:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->t:Lcom/google/android/gms/internal/ep;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/z;->a:Lcom/google/android/gms/ads/internal/formats/e;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ep;->a(Lcom/google/android/gms/internal/ef;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
