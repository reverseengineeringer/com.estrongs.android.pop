.class final Lcom/google/android/gms/internal/mh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gr;

.field final synthetic b:Lcom/google/android/gms/internal/mq;

.field final synthetic c:Lcom/google/android/gms/internal/dh;

.field final synthetic d:Lcom/google/android/gms/internal/dg;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/internal/mq;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mh;->a:Lcom/google/android/gms/internal/gr;

    iput-object p2, p0, Lcom/google/android/gms/internal/mh;->b:Lcom/google/android/gms/internal/mq;

    iput-object p3, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/dh;

    iput-object p4, p0, Lcom/google/android/gms/internal/mh;->d:Lcom/google/android/gms/internal/dg;

    iput-object p5, p0, Lcom/google/android/gms/internal/mh;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mh;->a:Lcom/google/android/gms/internal/gr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->b()Lcom/google/android/gms/internal/hf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mh;->b:Lcom/google/android/gms/internal/mq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mq;->a(Lcom/google/android/gms/internal/hf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/dh;

    iget-object v2, p0, Lcom/google/android/gms/internal/mh;->d:Lcom/google/android/gms/internal/dg;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/dh;->a(Lcom/google/android/gms/internal/dg;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mh;->c:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dh;->a()Lcom/google/android/gms/internal/dg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mi;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/mi;-><init>(Lcom/google/android/gms/internal/mh;Lcom/google/android/gms/internal/dg;)V

    new-instance v1, Lcom/google/android/gms/internal/mj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mj;-><init>(Lcom/google/android/gms/internal/mh;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/hf;->a(Lcom/google/android/gms/internal/pt;Lcom/google/android/gms/internal/pr;)V

    return-void
.end method
