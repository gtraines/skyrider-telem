.class public Lapp/panchip_weinikang/planecontroller/application/PlaneControllerApp;
.super Landroid/app/Application;
.source "PlaneControllerApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 13
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "app"

    const-string v1, "init"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p0}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->init(Landroid/content/Context;)V

    return-void
.end method
