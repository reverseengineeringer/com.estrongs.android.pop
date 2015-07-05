.class Lcom/estrongs/android/pop/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/estrongs/android/view/aw;

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Lcom/estrongs/android/pop/view/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/c;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILcom/estrongs/android/view/aw;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/d;->d:Ljava/lang/String;

    iput p6, p0, Lcom/estrongs/android/pop/view/d;->e:I

    iput-object p7, p0, Lcom/estrongs/android/pop/view/d;->f:Lcom/estrongs/android/view/aw;

    iput-boolean p8, p0, Lcom/estrongs/android/pop/view/d;->g:Z

    iput-boolean p9, p0, Lcom/estrongs/android/pop/view/d;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->be(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/view/d;->e:I

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->c(I)Lcom/estrongs/android/ui/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/d/d;->a(Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a([Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->f:Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->f:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/d;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/d;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Z)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->f:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/d;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->f:Lcom/estrongs/android/view/aw;

    instance-of v1, v1, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v1, :cond_b

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/pop/view/d;->e:I

    iget-object v3, p0, Lcom/estrongs/android/pop/view/d;->f:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;ILcom/estrongs/android/view/aw;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/w;->j()V

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Ljava/lang/String;

    const-string v1, "#home_page#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f0b0450

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Ljava/lang/String;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->i:Lcom/estrongs/android/pop/view/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/widget/Button;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
