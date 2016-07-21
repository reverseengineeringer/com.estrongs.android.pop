.class public final Lcom/google/android/gms/internal/rj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appdatasearch/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/appdatasearch/b;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/appdatasearch/b;-><init>(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;Lcom/google/android/gms/common/api/n;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method
