.class Lcom/estrongs/android/ui/e/dh;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/LinkedList;

.field final synthetic b:Ljava/util/LinkedList;

.field final synthetic c:Lcom/estrongs/android/ui/e/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cr;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dh;->c:Lcom/estrongs/android/ui/e/cr;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/dh;->a:Ljava/util/LinkedList;

    iput-object p4, p0, Lcom/estrongs/android/ui/e/dh;->b:Ljava/util/LinkedList;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dh;->c:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dh;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dh;->c:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/dh;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->a(Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dh;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dh;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_1
.end method
