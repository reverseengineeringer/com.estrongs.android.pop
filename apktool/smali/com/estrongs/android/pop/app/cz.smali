.class Lcom/estrongs/android/pop/app/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cz;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cz;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cz;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cz;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Lcom/estrongs/android/pop/app/ImageCommentActivity;Z)V

    :cond_1
    return-void
.end method
