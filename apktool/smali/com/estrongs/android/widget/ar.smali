.class Lcom/estrongs/android/widget/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ar;->a:Lcom/estrongs/android/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ar;->a:Lcom/estrongs/android/widget/ap;

    iget-object v0, v0, Lcom/estrongs/android/widget/ap;->e:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->i_()V

    return-void
.end method
