.class Lcom/google/android/gms/internal/hl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pr;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hf;

.field final synthetic b:Lcom/google/android/gms/internal/hj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hl;->b:Lcom/google/android/gms/internal/hj;

    iput-object p2, p0, Lcom/google/android/gms/internal/hl;->a:Lcom/google/android/gms/internal/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hl;->a:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hf;->e()V

    return-void
.end method
