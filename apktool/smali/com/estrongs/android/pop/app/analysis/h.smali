.class Lcom/estrongs/android/pop/app/analysis/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/h;->a:Lcom/estrongs/android/pop/app/analysis/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ddd"

    const-string v1, "::onfinish..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/h;->a:Lcom/estrongs/android/pop/app/analysis/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/g;->b:Lcom/estrongs/android/pop/app/analysis/f;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/pop/app/analysis/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/h;->a:Lcom/estrongs/android/pop/app/analysis/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/g;->b:Lcom/estrongs/android/pop/app/analysis/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/h;->a:Lcom/estrongs/android/pop/app/analysis/g;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/analysis/g;->b:Lcom/estrongs/android/pop/app/analysis/f;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/analysis/f;->b(Lcom/estrongs/android/pop/app/analysis/f;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/analysis/f;->a(Ljava/util/Map;ZLjava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
