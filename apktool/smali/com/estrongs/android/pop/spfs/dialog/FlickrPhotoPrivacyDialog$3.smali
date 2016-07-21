.class Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0e03e6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$800(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$900(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0e03e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$800(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;->this$0:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;

    # getter for: Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->access$900(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method
