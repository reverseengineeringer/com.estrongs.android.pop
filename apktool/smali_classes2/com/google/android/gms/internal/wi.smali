.class Lcom/google/android/gms/internal/wi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/wd;

.field final synthetic b:Lcom/google/android/gms/internal/wh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wh;Lcom/google/android/gms/internal/wd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/internal/wh;

    iput-object p2, p0, Lcom/google/android/gms/internal/wi;->a:Lcom/google/android/gms/internal/wd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->a:Lcom/google/android/gms/internal/wd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wd;->h()Lcom/google/android/gms/internal/wg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->a:Lcom/google/android/gms/internal/wd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wg;->a(Lcom/google/android/gms/internal/wd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/internal/wh;

    invoke-static {v0}, Lcom/google/android/gms/internal/wh;->a(Lcom/google/android/gms/internal/wh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wn;

    iget-object v2, p0, Lcom/google/android/gms/internal/wi;->a:Lcom/google/android/gms/internal/wd;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/wn;->a(Lcom/google/android/gms/internal/wd;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/internal/wh;

    iget-object v1, p0, Lcom/google/android/gms/internal/wi;->a:Lcom/google/android/gms/internal/wd;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wh;->a(Lcom/google/android/gms/internal/wh;Lcom/google/android/gms/internal/wd;)V

    return-void
.end method
