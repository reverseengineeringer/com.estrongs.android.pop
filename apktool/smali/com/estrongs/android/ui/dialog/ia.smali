.class Lcom/estrongs/android/ui/dialog/ia;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/au;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;Lcom/estrongs/android/ui/view/au;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ia;->b:Lcom/estrongs/android/ui/dialog/hn;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ia;->a:Lcom/estrongs/android/ui/view/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ia;->a:Lcom/estrongs/android/ui/view/au;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/au;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ia;->b:Lcom/estrongs/android/ui/dialog/hn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;Z)Z

    return-void
.end method
