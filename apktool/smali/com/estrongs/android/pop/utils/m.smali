.class Lcom/estrongs/android/pop/utils/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/android/pop/utils/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/m;->b:Lcom/estrongs/android/pop/utils/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/m;->b:Lcom/estrongs/android/pop/utils/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/utils/c;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/b/e;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/notification/d;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0202d1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    const v3, 0x7f08047e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    const v3, 0x7f08047e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    const v2, 0x7f08063f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->b(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/m;->a:Landroid/content/Context;

    const-class v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action"

    const-string v3, "from_update_notification"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/notification/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
