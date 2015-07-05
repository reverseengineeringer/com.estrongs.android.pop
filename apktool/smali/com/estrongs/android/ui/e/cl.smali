.class Lcom/estrongs/android/ui/e/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ck;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/ck;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/ck;->b(I)Lcom/estrongs/android/view/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/view/a/a;->f()V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/ck;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/cl;->a:Lcom/estrongs/android/ui/e/ck;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/ck;->a(Lcom/estrongs/android/ui/e/ck;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/ui/e/ck;->a(ILcom/estrongs/android/view/a/a;)V

    :cond_0
    return-void
.end method
