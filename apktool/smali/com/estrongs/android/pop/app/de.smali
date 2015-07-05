.class Lcom/estrongs/android/pop/app/de;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/dd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/dd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dd;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
