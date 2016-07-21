.class Lcom/estrongs/android/pop/app/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dc;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dc;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const-class v2, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pic_path"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/dc;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_detial_page"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dc;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
