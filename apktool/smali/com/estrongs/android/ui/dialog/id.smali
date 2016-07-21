.class Lcom/estrongs/android/ui/dialog/id;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/bd;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/view/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/id;->b:Lcom/estrongs/android/ui/dialog/hq;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/id;->a:Lcom/estrongs/android/ui/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/id;->a:Lcom/estrongs/android/ui/view/bd;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bd;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/id;->b:Lcom/estrongs/android/ui/dialog/hq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;Z)Z

    return-void
.end method
