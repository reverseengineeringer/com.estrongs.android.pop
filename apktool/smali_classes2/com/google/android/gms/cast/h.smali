.class Lcom/google/android/gms/cast/h;
.super Lcom/google/android/gms/cast/internal/p;


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/e;Lcom/google/android/gms/common/api/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/h;->a:Lcom/google/android/gms/cast/e;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/internal/p;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/cast/internal/g;)V
    .locals 1

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/cast/internal/g;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/h;->a(I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/h;->a(Lcom/google/android/gms/cast/internal/g;)V

    return-void
.end method
