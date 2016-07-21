.class Lcom/estrongs/android/widget/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/as;->a:Lcom/estrongs/android/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/as;->a:Lcom/estrongs/android/widget/ap;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ap;->b()Lcom/estrongs/android/view/eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->j()Lcom/estrongs/fs/h;

    return-void
.end method
