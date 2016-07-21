.class Lcom/estrongs/android/ui/pcs/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/z;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/z;->d(Lcom/estrongs/android/ui/pcs/z;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/z;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ac;->a:Lcom/estrongs/android/ui/pcs/z;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/z;->a()V

    return-void
.end method
