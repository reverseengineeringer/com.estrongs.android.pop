.class Lcom/estrongs/android/pop/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/d;->b:Lcom/estrongs/android/pop/utils/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/d;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/c;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/utils/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/e;-><init>(Lcom/estrongs/android/pop/utils/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
