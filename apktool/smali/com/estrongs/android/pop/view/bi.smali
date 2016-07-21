.class Lcom/estrongs/android/pop/view/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/q;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Lcom/estrongs/android/util/TypedMap;

.field final synthetic c:Lcom/estrongs/android/pop/view/bh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bi;->c:Lcom/estrongs/android/pop/view/bh;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bi;->a:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/bi;->b:Lcom/estrongs/android/util/TypedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bi;->c:Lcom/estrongs/android/pop/view/bh;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bi;->a:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bi;->b:Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/bh;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bi;->c:Lcom/estrongs/android/pop/view/bh;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->T()V

    :cond_0
    return-void
.end method
