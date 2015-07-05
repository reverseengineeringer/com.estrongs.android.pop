.class Lcom/estrongs/android/view/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/ac;

    iget-object v0, v0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/ac;

    iget-object v0, v0, Lcom/estrongs/android/view/ac;->e:Lcom/estrongs/android/view/u;

    iget-object v1, p0, Lcom/estrongs/android/view/ae;->a:Lcom/estrongs/android/view/ac;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/u;->b(Lcom/estrongs/android/view/ac;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
