.class Lcom/estrongs/android/pop/app/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ESUsePromptActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ESUsePromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/ESUsePromptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/ESUsePromptActivity;

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.estrongs.android.SHOW_DISK_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/ESUsePromptActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/ESUsePromptActivity;->startActivity(Landroid/content/Intent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
