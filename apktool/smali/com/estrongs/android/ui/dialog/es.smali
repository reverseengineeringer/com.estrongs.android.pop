.class Lcom/estrongs/android/ui/dialog/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/er;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/er;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/es;->a:Lcom/estrongs/android/ui/dialog/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->a:Lcom/estrongs/android/ui/dialog/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/er;->a:Lcom/estrongs/android/ui/dialog/en;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/en;->a()Z

    return-void
.end method
