.class Lcom/google/android/gms/cast/f;
.super Lcom/google/android/gms/cast/internal/p;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/cast/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/e;Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/f;->c:Lcom/google/android/gms/cast/e;

    iput-object p3, p0, Lcom/google/android/gms/cast/f;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/f;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/internal/p;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/cast/internal/g;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cast/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/cast/internal/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/ag;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/f;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/f;->a(Lcom/google/android/gms/cast/internal/g;)V

    return-void
.end method
