.class Lcom/estrongs/android/pop/app/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentPostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dq;->a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dq;->a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->setResult(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dq;->a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->finish()V

    return-void
.end method
