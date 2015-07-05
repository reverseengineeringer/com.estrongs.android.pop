.class Lcom/estrongs/android/pop/app/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/dj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/do;->a:Lcom/estrongs/android/pop/app/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/do;->a:Lcom/estrongs/android/pop/app/dj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/do;->a:Lcom/estrongs/android/pop/app/dj;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/do;->a:Lcom/estrongs/android/pop/app/dj;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pic_abs_path"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
