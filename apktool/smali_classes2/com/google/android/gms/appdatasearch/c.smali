.class Lcom/google/android/gms/appdatasearch/c;
.super Lcom/google/android/gms/internal/rh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/rh",
        "<",
        "Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/appdatasearch/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appdatasearch/b;Lcom/google/android/gms/common/api/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/c;->a:Lcom/google/android/gms/appdatasearch/b;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/rh;-><init>(Lcom/google/android/gms/common/api/ag;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Response;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/c;->b:Lcom/google/android/gms/common/api/ag;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/ag;->a(Ljava/lang/Object;)V

    return-void
.end method
