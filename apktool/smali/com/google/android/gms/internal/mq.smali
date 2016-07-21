.class public final Lcom/google/android/gms/internal/mq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/qa;

.field b:Lcom/google/android/gms/internal/hf;

.field public final c:Lcom/google/android/gms/internal/fq;

.field public final d:Lcom/google/android/gms/internal/fq;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/pj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/pj",
            "<",
            "Lcom/google/android/gms/internal/mu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mq;->e:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/pj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mq;->h:Lcom/google/android/gms/internal/pj;

    new-instance v0, Lcom/google/android/gms/internal/mr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mr;-><init>(Lcom/google/android/gms/internal/mq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mq;->c:Lcom/google/android/gms/internal/fq;

    new-instance v0, Lcom/google/android/gms/internal/ms;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ms;-><init>(Lcom/google/android/gms/internal/mq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mq;->d:Lcom/google/android/gms/internal/fq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mq;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/mq;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/mq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/mq;)Lcom/google/android/gms/internal/pj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->h:Lcom/google/android/gms/internal/pj;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/mq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/mq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/hf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->b:Lcom/google/android/gms/internal/hf;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mq;->b:Lcom/google/android/gms/internal/hf;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/qa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mq;->a:Lcom/google/android/gms/internal/qa;

    return-void
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/mu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->h:Lcom/google/android/gms/internal/pj;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->a:Lcom/google/android/gms/internal/qa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mq;->a:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mq;->a:Lcom/google/android/gms/internal/qa;

    :cond_0
    return-void
.end method
