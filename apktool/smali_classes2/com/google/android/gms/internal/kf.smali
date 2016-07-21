.class Lcom/google/android/gms/internal/kf;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/google/android/gms/internal/ke;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ke;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kf;->b:Lcom/google/android/gms/internal/ke;

    iput-object p2, p0, Lcom/google/android/gms/internal/kf;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Loading assets have finished"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->b:Lcom/google/android/gms/internal/ke;

    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->c:Lcom/google/android/gms/internal/kd;

    iget-object v0, v0, Lcom/google/android/gms/internal/kd;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/kf;->a:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Loading assets have failed."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kf;->b:Lcom/google/android/gms/internal/ke;

    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->c:Lcom/google/android/gms/internal/kd;

    iget-object v0, v0, Lcom/google/android/gms/internal/kd;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/kf;->a:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
