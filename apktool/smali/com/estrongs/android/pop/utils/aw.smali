.class final Lcom/estrongs/android/pop/utils/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/aw;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/aw;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/aw;->c:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/aw;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/aw;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/aw;->c:Lcom/estrongs/android/widget/f;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/f;->e()Lcom/estrongs/fs/h;

    move-result-object v2

    invoke-static {v0, v1, v2, v3, v3}, Lcom/estrongs/android/pop/utils/ao;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;ZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/aw;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/aw;->a:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    :cond_0
    return-void
.end method
