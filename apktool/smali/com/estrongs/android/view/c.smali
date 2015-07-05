.class Lcom/estrongs/android/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/handmark/pulltorefresh/library/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/k",
        "<",
        "Lcom/estrongs/android/widget/HeaderGridView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/c;->a:Lcom/estrongs/android/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Lcom/estrongs/android/widget/HeaderGridView;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/d;

    iget-object v1, p0, Lcom/estrongs/android/view/c;->a:Lcom/estrongs/android/view/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/d;-><init>(Lcom/estrongs/android/view/a;Lcom/estrongs/android/view/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Lcom/estrongs/android/widget/HeaderGridView;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/d;

    iget-object v1, p0, Lcom/estrongs/android/view/c;->a:Lcom/estrongs/android/view/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/d;-><init>(Lcom/estrongs/android/view/a;Lcom/estrongs/android/view/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
