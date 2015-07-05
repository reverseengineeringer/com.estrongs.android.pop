.class Lcom/estrongs/android/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/view/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/view/ac;

    iget-object v0, v0, Lcom/estrongs/android/view/ac;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b02fa

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/ad;->a:Lcom/estrongs/android/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/view/ac;->c()V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
