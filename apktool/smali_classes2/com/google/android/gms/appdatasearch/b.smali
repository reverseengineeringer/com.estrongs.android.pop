.class public Lcom/google/android/gms/appdatasearch/b;
.super Lcom/google/android/gms/common/api/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/af",
        "<",
        "Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;",
        "Lcom/google/android/gms/internal/ri;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/common/api/n;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/e;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/af;-><init>(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/n;)V

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/b;->a:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ri;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appdatasearch/b;->a(Lcom/google/android/gms/internal/ri;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ri;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->f()Lcom/google/android/gms/internal/rb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/b;->a:Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    new-instance v2, Lcom/google/android/gms/appdatasearch/c;

    invoke-direct {v2, p0, p0}, Lcom/google/android/gms/appdatasearch/c;-><init>(Lcom/google/android/gms/appdatasearch/b;Lcom/google/android/gms/common/api/ag;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/rb;->a(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/internal/re;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appdatasearch/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;

    move-result-object v0

    return-object v0
.end method
