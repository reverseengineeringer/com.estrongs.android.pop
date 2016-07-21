.class Lcom/estrongs/android/ui/dialog/ir;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ip;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ip;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ir;->a:Lcom/estrongs/android/ui/dialog/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ir;->a:Lcom/estrongs/android/ui/dialog/ip;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ip;->a(Lcom/estrongs/android/ui/dialog/ip;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.estrongs.android.pop.pro"

    const-string v2, "pname"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
