.class Lcom/estrongs/android/pop/app/analysis/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/utils/ck;


# instance fields
.field final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/b/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/b/v;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/b/x;->b:Lcom/estrongs/android/pop/app/analysis/b/v;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/b/x;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/x;->b:Lcom/estrongs/android/pop/app/analysis/b/v;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Lcom/estrongs/android/pop/app/analysis/b/v;)Lcom/estrongs/android/a/k;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/a/b;->a(Ljava/util/List;Lcom/estrongs/android/a/k;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/x;->b:Lcom/estrongs/android/pop/app/analysis/b/v;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/x;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method
