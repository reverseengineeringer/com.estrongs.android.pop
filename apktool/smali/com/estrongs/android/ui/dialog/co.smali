.class Lcom/estrongs/android/ui/dialog/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/co;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/co;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
