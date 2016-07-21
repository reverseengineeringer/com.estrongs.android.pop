.class Lcom/google/android/gms/ads/internal/formats/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/h;

.field final synthetic b:Lcom/google/android/gms/ads/internal/formats/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/q;Lcom/google/android/gms/ads/internal/formats/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/r;->b:Lcom/google/android/gms/ads/internal/formats/q;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/r;->a:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/r;->a:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/h;->c()Lcom/google/android/gms/internal/qa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/r;->b:Lcom/google/android/gms/ads/internal/formats/q;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/q;->a(Lcom/google/android/gms/ads/internal/formats/q;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
