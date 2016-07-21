.class Lcom/google/android/gms/internal/hn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bh;

.field final synthetic b:Lcom/google/android/gms/internal/hm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/internal/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hn;->b:Lcom/google/android/gms/internal/hm;

    iput-object p2, p0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->b:Lcom/google/android/gms/internal/hm;

    iget-object v0, v0, Lcom/google/android/gms/internal/hm;->a:Lcom/google/android/gms/internal/hj;

    invoke-static {v0}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/internal/hj;)Lcom/google/android/gms/internal/hd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hd;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/bh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->a()V

    return-void
.end method
