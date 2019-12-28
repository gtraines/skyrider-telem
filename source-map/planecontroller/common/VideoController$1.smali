.class Lapp/panchip_weinikang/planecontroller/common/VideoController$1;
.super Landroid/os/Handler;
.source "VideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/VideoController;
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

    .line 59
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$000(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c002e

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 64
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 65
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/VideoController$1;->this$0:Lapp/panchip_weinikang/planecontroller/common/VideoController;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->access$000(Lapp/panchip_weinikang/planecontroller/common/VideoController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c002f

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
