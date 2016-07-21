.class Lcom/google/android/gms/internal/pb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/tq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/tr;

.field final synthetic b:Lcom/google/android/gms/internal/oz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/tr;Lcom/google/android/gms/internal/oz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pb;->a:Lcom/google/android/gms/internal/tr;

    iput-object p2, p0, Lcom/google/android/gms/internal/pb;->b:Lcom/google/android/gms/internal/oz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pb;->a:Lcom/google/android/gms/internal/tr;

    iget-object v1, p0, Lcom/google/android/gms/internal/pb;->b:Lcom/google/android/gms/internal/oz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/oz;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/tr;->a(Ljava/lang/Object;)V

    return-void
.end method
