.class Lcom/estrongs/android/pop/app/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/dg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dh;->a:Lcom/estrongs/android/pop/app/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dh;->a:Lcom/estrongs/android/pop/app/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dg;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const v1, 0x7f080467

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dh;->a:Lcom/estrongs/android/pop/app/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dg;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e01ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
