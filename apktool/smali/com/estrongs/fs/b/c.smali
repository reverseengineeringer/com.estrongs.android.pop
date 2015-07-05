.class Lcom/estrongs/fs/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/c;->a:Lcom/estrongs/fs/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/b/c;->a:Lcom/estrongs/fs/b/a;

    invoke-static {v0}, Lcom/estrongs/fs/b/a;->c(Lcom/estrongs/fs/b/a;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
