.class Lcom/estrongs/fs/b/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/estrongs/fs/b/ai;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/ai;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/aj;->c:Lcom/estrongs/fs/b/ai;

    iput-object p2, p0, Lcom/estrongs/fs/b/aj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/b/aj;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/b/aj;->c:Lcom/estrongs/fs/b/ai;

    iget-object v1, v1, Lcom/estrongs/fs/b/ai;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aj;->c:Lcom/estrongs/fs/b/ai;

    iget-object v1, v1, Lcom/estrongs/fs/b/ai;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f080082

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/aj;->c:Lcom/estrongs/fs/b/ai;

    iget-object v1, v1, Lcom/estrongs/fs/b/ai;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/fs/b/aj;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/aj;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/estrongs/android/util/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
