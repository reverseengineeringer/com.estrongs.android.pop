.class Lcom/google/android/gms/internal/mi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/pt",
        "<",
        "Lcom/google/android/gms/internal/bt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dg;

.field final synthetic b:Lcom/google/android/gms/internal/mh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mh;Lcom/google/android/gms/internal/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mh;

    iput-object p2, p0, Lcom/google/android/gms/internal/mi;->a:Lcom/google/android/gms/internal/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bt;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/dh;

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->a:Lcom/google/android/gms/internal/dg;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mh;

    iget-object v0, v0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->b()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mh;

    iget-object v1, v1, Lcom/google/android/gms/internal/mh;->b:Lcom/google/android/gms/internal/mq;

    iget-object v1, v1, Lcom/google/android/gms/internal/mq;->c:Lcom/google/android/gms/internal/fq;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mh;

    iget-object v1, v1, Lcom/google/android/gms/internal/mh;->b:Lcom/google/android/gms/internal/mq;

    iget-object v1, v1, Lcom/google/android/gms/internal/mq;->d:Lcom/google/android/gms/internal/fq;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V

    :try_start_0
    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/mi;->b:Lcom/google/android/gms/internal/mh;

    iget-object v1, v1, Lcom/google/android/gms/internal/mh;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mi;->a(Lcom/google/android/gms/internal/bt;)V

    return-void
.end method
