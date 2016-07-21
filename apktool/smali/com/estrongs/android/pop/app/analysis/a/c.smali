.class Lcom/estrongs/android/pop/app/analysis/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/unlock/g;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/a/c;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/k/d;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/c;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->a(Lcom/estrongs/android/pop/app/analysis/a/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/a/c;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->b(Lcom/estrongs/android/pop/app/analysis/a/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/c;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->a(Lcom/estrongs/android/pop/app/analysis/a/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/c;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/analysis/a/a;->b(Lcom/estrongs/android/pop/app/analysis/a/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/a/c;->a:Lcom/estrongs/android/pop/app/analysis/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/analysis/a/a;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method
