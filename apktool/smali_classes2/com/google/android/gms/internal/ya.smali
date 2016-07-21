.class Lcom/google/android/gms/internal/ya;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/yp;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xx;

.field final synthetic b:Lcom/google/android/gms/internal/yb;

.field final synthetic c:Lcom/google/android/gms/internal/xz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/xx;Lcom/google/android/gms/internal/yb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ya;->c:Lcom/google/android/gms/internal/xz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ya;->a:Lcom/google/android/gms/internal/xx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ya;->b:Lcom/google/android/gms/internal/yb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Ljava/lang/Integer;J)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/yq;->a:Ljava/lang/Integer;

    if-ne p3, v0, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/zzqo$zza$zza;->zzaTQ:Lcom/google/android/gms/internal/zzqo$zza$zza;

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzqo$zza;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/internal/ya;->a:Lcom/google/android/gms/internal/xx;

    move-object v4, p2

    check-cast v4, Lcom/google/android/gms/internal/yl;

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzqo$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/xx;[BLcom/google/android/gms/internal/yl;Lcom/google/android/gms/internal/zzqo$zza$zza;J)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ya;->b:Lcom/google/android/gms/internal/yb;

    new-instance v2, Lcom/google/android/gms/internal/zzqo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzqo;-><init>(Lcom/google/android/gms/internal/zzqo$zza;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/internal/zzqo;)V

    return-void

    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/zzqo$zza$zza;->zzaTP:Lcom/google/android/gms/internal/zzqo$zza$zza;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no valid resource for the container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ya;->a:Lcom/google/android/gms/internal/xx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/xx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzqo$zza;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x10

    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/zzqo$zza$zza;->zzaTP:Lcom/google/android/gms/internal/zzqo$zza$zza;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzqo$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/xx;Lcom/google/android/gms/internal/zzqo$zza$zza;)V

    goto :goto_1
.end method
