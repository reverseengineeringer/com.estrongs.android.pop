.class Lcom/estrongs/android/ui/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/a/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/x;->b:Lcom/estrongs/android/ui/a/w;

    iput p2, p0, Lcom/estrongs/android/ui/a/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/x;->b:Lcom/estrongs/android/ui/a/w;

    iget v1, p0, Lcom/estrongs/android/ui/a/x;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/w;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/guesture/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/x;->b:Lcom/estrongs/android/ui/a/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/w;->a(Lcom/estrongs/android/ui/a/w;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/x;->b:Lcom/estrongs/android/ui/a/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/w;->a(Lcom/estrongs/android/ui/a/w;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0422

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/x;->b:Lcom/estrongs/android/ui/a/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/w;->notifyDataSetChanged()V

    return-void
.end method
