.class Lapp/panchip_weinikang/planecontroller/common/VideoController$4;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/VideoController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/VideoController;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$4;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$100(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$102(Lapp/panchip_weinikang/planecontroller/common/VideoController;Z)Z

    return-void
.end method
