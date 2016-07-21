.class Lcom/google/android/gms/internal/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field final synthetic c:Lcom/google/android/gms/internal/pj;

.field final synthetic d:Lcom/google/android/gms/internal/aj;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/aj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->f:Lcom/google/android/gms/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/internal/bk;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/bk;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/bk;->c:Lcom/google/android/gms/internal/pj;

    iput-object p5, p0, Lcom/google/android/gms/internal/bk;->d:Lcom/google/android/gms/internal/aj;

    iput-object p6, p0, Lcom/google/android/gms/internal/bk;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->f:Lcom/google/android/gms/internal/bj;

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/bk;->b:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/bk;->c:Lcom/google/android/gms/internal/pj;

    iget-object v4, p0, Lcom/google/android/gms/internal/bk;->d:Lcom/google/android/gms/internal/aj;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/bj;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->b(Ljava/lang/String;)V

    return-void
.end method
