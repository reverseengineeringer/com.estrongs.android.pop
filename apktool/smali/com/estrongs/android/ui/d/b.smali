.class Lcom/estrongs/android/ui/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/d/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/d/a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/d/b;->b:Lcom/estrongs/android/ui/d/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Lcom/estrongs/android/ui/d/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/a;->a(Lcom/estrongs/android/ui/d/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Lcom/estrongs/android/ui/d/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/a;->a(Lcom/estrongs/android/ui/d/a;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Lcom/estrongs/android/ui/d/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/a;->b(Lcom/estrongs/android/ui/d/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "mbx"

    const-string v2, "bell_clk"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Lcom/estrongs/android/ui/d/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/d/b;->b:Lcom/estrongs/android/ui/d/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/a;->c(Lcom/estrongs/android/ui/d/a;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->N()V

    goto :goto_0
.end method
