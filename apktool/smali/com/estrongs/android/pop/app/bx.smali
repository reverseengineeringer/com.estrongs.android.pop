.class Lcom/estrongs/android/pop/app/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/bu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bx;->a:Lcom/estrongs/android/pop/app/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bx;->a:Lcom/estrongs/android/pop/app/bu;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bx;->a:Lcom/estrongs/android/pop/app/bu;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bx;->a:Lcom/estrongs/android/pop/app/bu;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/bu;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
