.class Lcom/estrongs/android/ui/c/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

.field final synthetic c:Lcom/estrongs/android/ui/c/b/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/b;Ljava/lang/String;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/c/b/c;->b:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0xc

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/cv;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->b:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/cu;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->aL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/WebViewWrapper;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->b:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/b;->a(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/estrongs/android/util/am;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v1

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)Lcom/estrongs/android/view/aw;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->b:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/b;->a(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->b:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/b;->a(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    goto :goto_1

    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/c;->b:Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/c/b/b;->a(Lcom/estrongs/android/ui/c/b/b;Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;)V

    throw v0

    :cond_5
    :try_start_7
    invoke-static {v0}, Lcom/estrongs/android/util/am;->bQ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/am;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/am;->T(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/am;->U(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/estrongs/android/util/am;->W(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v1

    if-ge v1, v2, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)Lcom/estrongs/android/view/aw;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/c;->c:Lcom/estrongs/android/ui/c/b/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
