.class Lcom/estrongs/android/ui/preference/fragments/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/estrongs/android/ui/preference/fragments/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/l;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iput-object p2, p0, Lcom/estrongs/android/ui/preference/fragments/n;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/estrongs/android/ui/preference/fragments/n;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const v5, 0x7f08056f

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/n;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/util/ax;

    invoke-direct {v2}, Lcom/estrongs/android/util/ax;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v3, v3, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/estrongs/android/util/ax;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    const-string v1, "net://*"

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080570

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/o;-><init>(Lcom/estrongs/android/ui/preference/fragments/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08056d

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08056c

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
