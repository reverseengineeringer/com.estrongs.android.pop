.class Lcom/google/android/gms/cast/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/internal/z;


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/az;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/az;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/ba;->a:Lcom/google/android/gms/cast/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/ba;->a:Lcom/google/android/gms/cast/az;

    iget-object v1, p0, Lcom/google/android/gms/cast/ba;->a:Lcom/google/android/gms/cast/az;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x837

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/az;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/az;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method

.method public a(JILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p4, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast p4, Lorg/json/JSONObject;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/ba;->a:Lcom/google/android/gms/cast/az;

    new-instance v1, Lcom/google/android/gms/cast/bc;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/cast/bc;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/az;->a(Lcom/google/android/gms/common/api/z;)V

    return-void

    :cond_0
    move-object p4, v0

    goto :goto_0
.end method
