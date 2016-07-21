.class Lcom/estrongs/android/view/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->e:Lcom/estrongs/android/view/y;

    iget-object v1, p0, Lcom/estrongs/android/view/ah;->a:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/y;->b(Lcom/estrongs/android/view/af;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
