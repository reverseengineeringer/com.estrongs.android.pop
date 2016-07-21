.class Lcom/estrongs/android/ui/e/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/i;->a:Lcom/estrongs/android/ui/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/i;->a:Lcom/estrongs/android/ui/e/f;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/f;->a(I)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
