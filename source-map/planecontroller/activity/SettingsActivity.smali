.class public Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private autoSaveSwitch:Landroid/widget/Switch;

.field private controlProtocolDialog:Landroid/app/AlertDialog;

.field private controlProtocolName:Landroid/widget/TextView;

.field private rightHandModeSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->controlProtocolName:Landroid/widget/TextView;

    return-object p0
.end method

.method private init()V
    .locals 5

    const v0, 0x7f070025

    .line 33
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07008c

    .line 34
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07003a

    .line 35
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070024

    .line 37
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->autoSaveSwitch:Landroid/widget/Switch;

    .line 38
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->autoSaveSwitch:Landroid/widget/Switch;

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->isAutoSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const v0, 0x7f070090

    .line 39
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->rightHandModeSwitch:Landroid/widget/Switch;

    .line 40
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->rightHandModeSwitch:Landroid/widget/Switch;

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->isRightHandMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const v0, 0x7f070088

    .line 41
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->controlProtocolName:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->controlProtocolName:Landroid/widget/TextView;

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getControlProtocolName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->autoSaveSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->rightHandModeSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const v1, 0x7f0700d8

    .line 51
    invoke-virtual {p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0025

    .line 57
    invoke-virtual {p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->ControlProtocolNames:[Ljava/lang/String;

    .line 58
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getControlProtocol()I

    move-result v3

    new-instance v4, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity$1;

    invoke-direct {v4, p0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity$1;-><init>(Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->controlProtocolDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f070024

    if-eq p1, v0, :cond_1

    const v0, 0x7f070090

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->changeRightHandModePreference(Z)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->changeAutoSavePreference(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070025

    if-eq p1, v0, :cond_2

    const v0, 0x7f07003a

    if-eq p1, v0, :cond_1

    const v0, 0x7f07008c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->resetFlightArguments()V

    const p1, 0x7f0c0036

    .line 77
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->controlProtocolDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090039

    .line 27
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->init()V

    return-void
.end method
