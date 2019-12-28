.class public Lapp/panchip_weinikang/planecontroller/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final RequestPermission:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 5

    const v0, 0x7f0700af

    .line 62
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070084

    .line 63
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070058

    .line 64
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700d2

    .line 65
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "v %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->packageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->requestPermission()V

    return-void
.end method

.method private packageName()Ljava/lang/String;
    .locals 4

    .line 71
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, ""

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 75
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private requestPermission()V
    .locals 7

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 88
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    goto :goto_0

    .line 90
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    .line 92
    :goto_0
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 93
    invoke-virtual {p0, v5}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_2

    .line 100
    :cond_3
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->checkAndCreateFolder()V

    goto :goto_2

    .line 103
    :cond_4
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->checkAndCreateFolder()V

    :goto_2
    return-void
.end method

.method private verifyPermissions([I)Z
    .locals 4

    .line 123
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f070058

    if-eq p1, v1, :cond_2

    const v1, 0x7f070084

    if-eq p1, v1, :cond_1

    const v1, 0x7f0700af

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    const-class p1, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 49
    :cond_1
    const-class p1, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 55
    :cond_2
    const-class p1, Lapp/panchip_weinikang/planecontroller/activity/HelpActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090020

    .line 29
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 110
    invoke-direct {p0, p3}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/util/FileUtil;->checkAndCreateFolder()V

    goto :goto_0

    :cond_0
    const-string p1, "\u672c\u5e94\u7528\u9700\u8981\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u6388\u6743"

    const/4 p2, 0x0

    .line 114
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 115
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/MainActivity;->finish()V

    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
