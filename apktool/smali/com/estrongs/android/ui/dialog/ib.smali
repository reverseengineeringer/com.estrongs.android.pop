.class Lcom/estrongs/android/ui/dialog/ib;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/bd;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/view/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ib;->b:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ib;->a:Lcom/estrongs/android/ui/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ib;->a:Lcom/estrongs/android/ui/view/bd;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bd;->d()V

    return-void
.end method
