.class Lcom/estrongs/android/view/de;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/de;->b:Lcom/estrongs/android/view/cr;

    iput p2, p0, Lcom/estrongs/android/view/de;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/de;->b:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/cr;->h:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/estrongs/android/view/de;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
