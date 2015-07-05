.class Lcom/estrongs/android/widget/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ao;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ar;->a:Lcom/estrongs/android/widget/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ar;->a:Lcom/estrongs/android/widget/ao;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ao;->b()Lcom/estrongs/android/view/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/cd;->j()Lcom/estrongs/fs/h;

    return-void
.end method
