.class Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;
.super Ljava/lang/Object;
.source "PlaneController.java"

# interfaces
.implements Lapp/panchip_weinikang/planecontroller/common/ReliableCommandSender$FinishSendingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/PlaneController;->handshake()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishSending(Z[BI)V
    .locals 4

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$000(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2$1;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2$1;-><init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    if-le p3, p1, :cond_1

    const/16 v0, 0x14

    const/16 v1, 0x13

    if-ne p3, v0, :cond_0

    .line 129
    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    new-instance v0, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, p2, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {p3, v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$302(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-ne p3, v0, :cond_2

    .line 131
    iget-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, p2, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {p3, v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$302(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    aget-byte p2, p2, p1

    and-int/lit16 p2, p2, 0xff

    .line 133
    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/util/AviEncoder;->setFPS(I)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    const-string p3, "OLD"

    invoke-static {p2, p3}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$302(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :cond_2
    :goto_0
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {p2, p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$402(Lapp/panchip_weinikang/planecontroller/common/PlaneController;Z)Z

    .line 138
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$500(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/VideoController;

    move-result-object p1

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/VideoController;->activate()V

    .line 139
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-virtual {p1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->videoResume()V

    :cond_3
    return-void
.end method
