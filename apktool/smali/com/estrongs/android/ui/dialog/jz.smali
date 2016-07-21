.class Lcom/estrongs/android/ui/dialog/jz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jz;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jz;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jz;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/a/a;)V

    return-void
.end method
