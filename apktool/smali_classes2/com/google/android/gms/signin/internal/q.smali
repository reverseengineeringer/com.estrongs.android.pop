.class Lcom/google/android/gms/signin/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/signin/internal/i;

.field final synthetic d:Lcom/google/android/gms/signin/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/signin/internal/o;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/signin/internal/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/q;->d:Lcom/google/android/gms/signin/internal/o;

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/q;->c:Lcom/google/android/gms/signin/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/q;->d:Lcom/google/android/gms/signin/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/signin/internal/o;->a(Lcom/google/android/gms/signin/internal/o;)Lcom/google/android/gms/common/api/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/q;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/q;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/q;->c:Lcom/google/android/gms/signin/internal/i;

    invoke-interface {v1, v0}, Lcom/google/android/gms/signin/internal/i;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "RemoteException thrown when processing uploadServerAuthCode callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
