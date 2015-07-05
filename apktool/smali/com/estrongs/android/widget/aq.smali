.class Lcom/estrongs/android/widget/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ao;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/aq;->a:Lcom/estrongs/android/widget/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/aq;->a:Lcom/estrongs/android/widget/ao;

    iget-object v0, v0, Lcom/estrongs/android/widget/ao;->i:Lcom/estrongs/android/view/cd;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cd;->a_()V

    return-void
.end method
