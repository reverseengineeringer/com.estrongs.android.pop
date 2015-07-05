.class Lcom/estrongs/android/ui/pcs/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/z;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->a:Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/z;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/w;->d(Lcom/estrongs/android/ui/pcs/w;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/w;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/z;->a:Lcom/estrongs/android/ui/pcs/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/w;->a()V

    return-void
.end method
