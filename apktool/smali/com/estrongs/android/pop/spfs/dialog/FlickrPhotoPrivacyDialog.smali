.class public Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;
.super Lcom/estrongs/android/ui/dialog/cg;


# static fields
.field private static final ALBUM_DIV:Ljava/lang/String; = ","

.field private static final TAG_DIV:Ljava/lang/String; = " "


# instance fields
.field private addAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field

.field albumDialog:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field

.field private allAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field

.field private btn_pic_name:Landroid/widget/Button;

.field private cbxFamiliy:Landroid/widget/CheckBox;

.field private cbxFriend:Landroid/widget/CheckBox;

.field private description:Landroid/widget/EditText;

.field private destPath:Ljava/lang/String;

.field private info:Lcom/estrongs/android/pop/spfs/SPFileInfo;

.field private isAlbumEdit:Z

.field private overwriteOptionView:Landroid/view/View;

.field private pocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;

.field private privacies:Lcom/estrongs/android/util/TypedMap;

.field private radioAnyone:Landroid/widget/RadioButton;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private radioOnlyYou:Landroid/widget/RadioButton;

.field private removeAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field

.field private selectedAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Landroid/widget/EditText;

.field private title:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Lcom/estrongs/android/pop/spfs/SPFileObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Lcom/estrongs/android/pop/spfs/SPFileObject;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Lcom/estrongs/android/pop/spfs/SPFileObject;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;

    iput-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->pocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;

    iput-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;

    iput-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->removeAlbumList:Ljava/util/List;

    iput-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;

    iput-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->allAlbumList:Ljava/util/List;

    iput-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    iput-object v4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumDialog:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->pocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;

    iput-object p4, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;

    :cond_0
    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0208

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a020f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a0021

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a009f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a0213

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->tag:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a0215

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->btn_pic_name:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$1;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)V

    iget-object v5, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->btn_pic_name:Landroid/widget/Button;

    new-instance v6, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;

    invoke-direct {v6, p0, v1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$2;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoAlbumDialog$AlbumOptionCallback;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a0217

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a0218

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioOnlyYou:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a021b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioAnyone:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a0219

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->overwriteOptionView:Landroid/view/View;

    const v5, 0x7f0a021a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$3;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->adjustkUI()V

    const v1, 0x7f0b000b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v5, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;

    invoke-direct {v5, p0, v0, p3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$4;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Landroid/widget/ProgressBar;Lcom/estrongs/android/pop/spfs/SPFileObject;)V

    invoke-virtual {p0, v1, v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v1, 0x7f0b000c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v5, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$5;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$5;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)V

    invoke-virtual {p0, v1, v5}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->title:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/estrongs/android/pop/spfs/SPFileObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/estrongs/android/pop/spfs/SPFileObject;->isPublicFlag()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioAnyone:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioOnlyYou:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;

    invoke-direct {v1, p0, v0, v4, p3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;-><init>(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Landroid/widget/ProgressBar;Landroid/view/View;Lcom/estrongs/android/pop/spfs/SPFileObject;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    move v0, v3

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioAnyone:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioOnlyYou:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Lcom/estrongs/android/pop/spfs/SPFileObject;->isFriendFlag()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Lcom/estrongs/android/pop/spfs/SPFileObject;->isFamilyFlag()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/estrongs/android/pop/spfs/SPFileObject;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;Lcom/estrongs/android/pop/spfs/SPFileObject;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->adjustkUI()V

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->addAlbumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->removeAlbumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->title:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->removeAlbumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Lcom/estrongs/android/pop/spfs/SPFileInfo;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->info:Lcom/estrongs/android/pop/spfs/SPFileInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Lcom/estrongs/android/util/TypedMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->tag:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->radioOnlyYou:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->selectedAlbumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->displayPicName(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->albumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->allAlbumList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->allAlbumList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFriend:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->cbxFamiliy:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private displayPicName(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/spfs/Album;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/spfs/Album;

    iget-object v0, v0, Lcom/estrongs/android/pop/spfs/Album;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->btn_pic_name:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->btn_pic_name:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected adjustkUI()V
    .locals 4

    const v3, 0x7f0a0216

    const v2, 0x7f0a0211

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->destPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0210

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->description:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->tag:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->isAlbumEdit:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->tag:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f0a0212

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0214

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->pocb:Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;

    iget-object v1, p0, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->privacies:Lcom/estrongs/android/util/TypedMap;

    invoke-interface {v0, v1, p1}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog$PrivacyOptionCallback;->setPrivacty(Lcom/estrongs/android/util/TypedMap;Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/spfs/dialog/FlickrPhotoPrivacyDialog;->dismiss()V

    return-void
.end method
