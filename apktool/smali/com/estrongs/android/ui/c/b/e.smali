.class Lcom/estrongs/android/ui/c/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

.field final synthetic d:Lcom/estrongs/android/ui/c/b/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/b;ZLjava/lang/String;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/e;->d:Lcom/estrongs/android/ui/c/b/b;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/c/b/e;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/ui/c/b/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/c/b/e;->c:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/fc;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/e;->d:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/fc;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/fc;->a()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/b/e;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/e;->d:Lcom/estrongs/android/ui/c/b/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/e;->c:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->shortcutName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/e/ie;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/e;->d:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/e;->c:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/b;->c(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    goto :goto_0
.end method
