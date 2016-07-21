.class Lcom/google/android/gms/internal/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bi;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/pj;

.field final synthetic b:Lcom/google/android/gms/internal/bh;

.field final synthetic c:Lcom/google/android/gms/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bl;->c:Lcom/google/android/gms/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/internal/bl;->a:Lcom/google/android/gms/internal/pj;

    iput-object p3, p0, Lcom/google/android/gms/internal/bl;->b:Lcom/google/android/gms/internal/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bl;->a:Lcom/google/android/gms/internal/pj;

    iget-object v1, p0, Lcom/google/android/gms/internal/bl;->b:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pj;->b(Ljava/lang/Object;)V

    return-void
.end method
