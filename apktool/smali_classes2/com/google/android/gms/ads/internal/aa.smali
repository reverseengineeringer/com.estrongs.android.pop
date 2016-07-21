.class Lcom/google/android/gms/ads/internal/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ng;

.field final synthetic c:Lcom/google/android/gms/ads/internal/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/w;Ljava/lang/String;Lcom/google/android/gms/internal/ng;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/aa;->c:Lcom/google/android/gms/ads/internal/w;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/aa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/aa;->b:Lcom/google/android/gms/internal/ng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/aa;->c:Lcom/google/android/gms/ads/internal/w;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/w;->c:Lcom/google/android/gms/ads/internal/af;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/af;->v:Lcom/google/android/gms/internal/sz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/sz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ev;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/aa;->b:Lcom/google/android/gms/internal/ng;

    iget-object v1, v1, Lcom/google/android/gms/internal/ng;->w:Lcom/google/android/gms/ads/internal/formats/o;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/ej;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
