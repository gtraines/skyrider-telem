.class Lapp/panchip_weinikang/planecontroller/common/VideoController$5;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/VideoController;->onFrameReceived(Lapp/panchip_weinikang/planecontroller/common/FrameBufferPool$FrameBuffer;)V
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

    .line 297
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$5;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$5;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$300(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$5;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$400(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$5;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$500(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
