.class Lcom/google/android/gms/internal/yc;
.super Lcom/google/android/gms/internal/zzqx;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/xz;

.field private final b:Lcom/google/android/gms/internal/yb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/yb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/yc;->a:Lcom/google/android/gms/internal/xz;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzqx;-><init>(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/ye;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/yc;->b:Lcom/google/android/gms/internal/yb;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/xx;)Lcom/google/android/gms/internal/yy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/zzqo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo;->b()Lcom/google/android/gms/internal/zzqo$zza;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/yc;->a:Lcom/google/android/gms/internal/xz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/xz;->a(Lcom/google/android/gms/internal/zzqo$zza;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->b()Lcom/google/android/gms/internal/zzqo$zza$zza;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/zzqo$zza$zza;->zzaTO:Lcom/google/android/gms/internal/zzqo$zza$zza;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->c()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->c()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/yc;->a:Lcom/google/android/gms/internal/xz;

    invoke-static {v0}, Lcom/google/android/gms/internal/xz;->a(Lcom/google/android/gms/internal/xz;)Lcom/google/android/gms/internal/yq;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->d()Lcom/google/android/gms/internal/xx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/xx;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->c()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/yq;->a(Ljava/lang/String;[B)V

    const-string v0, "Resource successfully load from Network."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/yc;->b:Lcom/google/android/gms/internal/yb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/yb;->a(Lcom/google/android/gms/internal/zzqo;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SUCCESS"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->b()Lcom/google/android/gms/internal/zzqo$zza$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzqo$zza$zza;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->c()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/yc;->a:Lcom/google/android/gms/internal/xz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqo$zza;->d()Lcom/google/android/gms/internal/xx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/yc;->b:Lcom/google/android/gms/internal/yb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/xz;->a(Lcom/google/android/gms/internal/xx;Lcom/google/android/gms/internal/yb;)V

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE"

    goto :goto_1
.end method
