.class Lcom/estrongs/android/ui/controller/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/as;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/as;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
