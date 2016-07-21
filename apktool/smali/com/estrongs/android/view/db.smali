.class Lcom/estrongs/android/view/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Z()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/cr;

    iget-object v1, v1, Lcom/estrongs/android/view/cr;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/f/f;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/util/ArrayList;)Z

    goto :goto_0

    :cond_3
    const v1, 0x7f080639

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(I)V

    goto :goto_0
.end method
