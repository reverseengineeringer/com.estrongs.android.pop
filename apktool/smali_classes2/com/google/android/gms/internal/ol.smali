.class Lcom/google/android/gms/internal/ol;
.super Lcom/google/android/gms/internal/ok;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ok;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/qa;)Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/qv;-><init>(Lcom/google/android/gms/internal/qa;)V

    return-object v0
.end method

.method public a(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
