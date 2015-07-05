.class Lcom/estrongs/android/ui/dialog/hy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/au;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;Lcom/estrongs/android/ui/view/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hy;->b:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hy;->a:Lcom/estrongs/android/ui/view/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hy;->a:Lcom/estrongs/android/ui/view/au;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/au;->d()V

    return-void
.end method
