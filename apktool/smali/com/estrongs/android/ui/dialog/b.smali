.class Lcom/estrongs/android/ui/dialog/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/b;->a:Lcom/estrongs/android/ui/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/b/f;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/b;->a:Lcom/estrongs/android/ui/dialog/a;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-direct {v1, v2}, Lcom/estrongs/fs/b/f;-><init>(Lcom/estrongs/fs/h;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/b;->a:Lcom/estrongs/android/ui/dialog/a;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/a;->a(Lcom/estrongs/android/ui/dialog/a;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b057b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/dialog/b;->a:Lcom/estrongs/android/ui/dialog/a;

    iget-object v5, v5, Lcom/estrongs/android/ui/dialog/a;->a:Lcom/estrongs/fs/impl/adb/a;

    invoke-virtual {v5}, Lcom/estrongs/fs/impl/adb/a;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/f;->setDescription(Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/m;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/f;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/jw;

    const v3, 0x7f0b057d

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/estrongs/android/ui/dialog/jw;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/jw;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/f;->execute()V

    return-void
.end method
