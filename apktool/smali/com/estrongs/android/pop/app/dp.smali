.class Lcom/estrongs/android/pop/app/dp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentPostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dp;->a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dp;->a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->a(Lcom/estrongs/android/pop/app/ImageCommentPostActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dp;->a:Lcom/estrongs/android/pop/app/ImageCommentPostActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/ImageCommentPostActivity;->a(Lcom/estrongs/android/pop/app/ImageCommentPostActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
