.class public Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;
.super Landroid/app/Activity;
.source "MediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final PHOTOS:I = 0x0

.field public static final VIDEOS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f070025

    .line 23
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07007c

    .line 24
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700de

    .line 25
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070025

    if-eq p1, v0, :cond_2

    const v0, 0x7f07007c

    if-eq p1, v0, :cond_1

    const v0, 0x7f0700de

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090022

    .line 17
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->setContentView(I)V

    .line 19
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/MediaActivity;->init()V

    return-void
.end method
