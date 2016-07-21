.class Lcom/estrongs/android/ui/preference/fragments/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/o;->a:Lcom/estrongs/android/ui/preference/fragments/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const-string v1, "restoresettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/FexApplication;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/o;->a:Lcom/estrongs/android/ui/preference/fragments/n;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/n;->c:Lcom/estrongs/android/ui/preference/fragments/l;

    iget-object v0, v0, Lcom/estrongs/android/ui/preference/fragments/l;->a:Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/BackupPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
