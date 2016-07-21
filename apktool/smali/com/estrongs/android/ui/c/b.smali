.class Lcom/estrongs/android/ui/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/unlock/y;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/k/d;

    invoke-virtual {v0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/a;->b(Lcom/estrongs/android/ui/c/a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/a;->notifyItemChanged(I)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
