.class Lcom/estrongs/android/pop/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lcom/estrongs/android/pop/view/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/c;Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/view/cr;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/d;->c:[Ljava/lang/String;

    iput p5, p0, Lcom/estrongs/android/pop/view/d;->d:I

    iput-boolean p6, p0, Lcom/estrongs/android/pop/view/d;->e:Z

    iput-boolean p7, p0, Lcom/estrongs/android/pop/view/d;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/view/cr;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/d;->c:[Ljava/lang/String;

    iget v4, p0, Lcom/estrongs/android/pop/view/d;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/ui/controller/a;->a(Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/d;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ab()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/d;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/view/cr;

    instance-of v1, v1, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/pop/view/d;->d:I

    iget-object v3, p0, Lcom/estrongs/android/pop/view/d;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;ILcom/estrongs/android/view/cr;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/a;->s()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/d;->g:Lcom/estrongs/android/pop/view/c;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->av()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
