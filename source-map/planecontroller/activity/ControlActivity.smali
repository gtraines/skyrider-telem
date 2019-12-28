.class public Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;
.super Landroid/app/Activity;
.source "ControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private fpvInfoDialog:Landroid/app/AlertDialog;

.field private planeController:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

.field private powerManager:Landroid/os/PowerManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)Lapp/panchip_weinikang/planecontroller/common/PlaneController;
    .locals 0

    .line 18
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->planeController:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    return-object p0
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 18
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->fpvInfoDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private init()V
    .locals 3

    const-string v0, "power"

    .line 85
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->powerManager:Landroid/os/PowerManager;

    .line 86
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->powerManager:Landroid/os/PowerManager;

    const-string v1, "controller lock"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const v0, 0x7f070026

    .line 89
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07001d

    .line 90
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c002a

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->fpvInfoDialog:Landroid/app/AlertDialog;

    const v0, 0x7f070054

    .line 97
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$1;-><init>(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->planeController:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    const v0, 0x7f070099

    .line 111
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$2;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity$2;-><init>(Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f07001d

    if-eq p1, v0, :cond_1

    const v0, 0x7f070026

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->finish()V

    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->isRightHandMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f09001d

    .line 32
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f09001c

    .line 34
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->setContentView(I)V

    .line 35
    :goto_0
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->planeController:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->stop()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 49
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->planeController:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->pause()V

    .line 51
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->isAutoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->saveFlightArguments()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 41
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 42
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/ControlActivity;->planeController:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->resume()V

    return-void
.end method
