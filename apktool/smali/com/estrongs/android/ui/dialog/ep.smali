.class Lcom/estrongs/android/ui/dialog/ep;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/eo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ep;->a:Lcom/estrongs/android/ui/dialog/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ep;->a:Lcom/estrongs/android/ui/dialog/eo;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eo;->a:Lcom/estrongs/android/ui/dialog/ek;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ek;->a()Z

    return-void
.end method
