.class Lcom/estrongs/android/ui/adapter/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/unlock/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/az;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/az;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->c(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/adapter/dm;

    iget-object v2, v0, Lcom/estrongs/android/ui/adapter/dm;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/adapter/az;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    iget v2, v2, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->f:I

    iput v2, v0, Lcom/estrongs/android/ui/adapter/dm;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/az;->a:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->d(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/adapter/ba;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/ba;-><init>(Lcom/estrongs/android/ui/adapter/az;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
