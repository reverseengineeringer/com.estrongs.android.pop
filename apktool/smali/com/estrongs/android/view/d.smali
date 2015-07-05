.class Lcom/estrongs/android/view/d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/a;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/d;->a:Lcom/estrongs/android/view/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/view/a;Lcom/estrongs/android/view/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/d;-><init>(Lcom/estrongs/android/view/a;)V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/d;->a:Lcom/estrongs/android/view/a;

    invoke-static {v0}, Lcom/estrongs/android/view/a;->b(Lcom/estrongs/android/view/a;)Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->n()V

    iget-object v0, p0, Lcom/estrongs/android/view/d;->a:Lcom/estrongs/android/view/a;

    const-string v1, "app://update"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a;->g(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/d;->a([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/d;->a([Ljava/lang/String;)V

    return-void
.end method
