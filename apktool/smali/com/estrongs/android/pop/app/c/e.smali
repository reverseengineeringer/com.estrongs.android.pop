.class public abstract Lcom/estrongs/android/pop/app/c/e;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/pop/app/c/g;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/Thread;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/c/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->c:Ljava/util/Map;

    const-string v0, "MusicTagLoader"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/c/e;->f:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/c/e;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/c/e;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/c/e;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/c/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/c/h;-><init>(Lcom/estrongs/android/pop/app/c/e;Lcom/estrongs/android/pop/app/c/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/c/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/c/e;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/c/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/estrongs/android/pop/app/c/i;Landroid/view/View;)V
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->e:Ljava/lang/Thread;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/c/e;->a()V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/c/e;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/estrongs/android/pop/app/c/g;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/pop/app/c/g;-><init>(ILcom/estrongs/android/pop/app/c/i;Landroid/view/View;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/e;->c:Ljava/util/Map;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/c/g;->b:Lcom/estrongs/android/pop/app/c/i;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/c/e;->c:Ljava/util/Map;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/c/g;->b:Lcom/estrongs/android/pop/app/c/i;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract a(Lcom/estrongs/android/pop/app/c/g;)Z
.end method

.method protected abstract b(Lcom/estrongs/android/pop/app/c/g;)Z
.end method
