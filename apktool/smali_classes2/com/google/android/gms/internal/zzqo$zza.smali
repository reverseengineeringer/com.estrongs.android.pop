.class public Lcom/google/android/gms/internal/zzqo$zza;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/android/gms/internal/zzqo$zza$zza;

.field private final c:[B

.field private final d:J

.field private final e:Lcom/google/android/gms/internal/xx;

.field private final f:Lcom/google/android/gms/internal/yl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/xx;Lcom/google/android/gms/internal/zzqo$zza$zza;)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzqo$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/xx;[BLcom/google/android/gms/internal/yl;Lcom/google/android/gms/internal/zzqo$zza$zza;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/xx;[BLcom/google/android/gms/internal/yl;Lcom/google/android/gms/internal/zzqo$zza$zza;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqo$zza;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqo$zza;->e:Lcom/google/android/gms/internal/xx;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqo$zza;->c:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqo$zza;->f:Lcom/google/android/gms/internal/yl;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqo$zza;->b:Lcom/google/android/gms/internal/zzqo$zza$zza;

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzqo$zza;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo$zza;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/internal/zzqo$zza$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo$zza;->b:Lcom/google/android/gms/internal/zzqo$zza$zza;

    return-object v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo$zza;->c:[B

    return-object v0
.end method

.method public d()Lcom/google/android/gms/internal/xx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo$zza;->e:Lcom/google/android/gms/internal/xx;

    return-object v0
.end method

.method public e()Lcom/google/android/gms/internal/yl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqo$zza;->f:Lcom/google/android/gms/internal/yl;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqo$zza;->d:J

    return-wide v0
.end method
