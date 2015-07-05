.class Lcom/estrongs/android/view/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/dp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dp;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dr;->b:Lcom/estrongs/android/view/dp;

    iput p2, p0, Lcom/estrongs/android/view/dr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/dr;->b:Lcom/estrongs/android/view/dp;

    iget v1, p0, Lcom/estrongs/android/view/dr;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/dp;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/dr;->b:Lcom/estrongs/android/view/dp;

    iget-object v0, v0, Lcom/estrongs/android/view/dp;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    return-void
.end method
