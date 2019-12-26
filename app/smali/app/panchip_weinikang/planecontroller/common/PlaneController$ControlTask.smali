.class Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;
.super Ljava/lang/Thread;
.source "PlaneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/PlaneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlTask"
.end annotation


# instance fields
.field pause:Z

.field running:Z

.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method kill()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->running:Z

    return-void
.end method

.method pause()V
    .locals 1

    .line 199
    monitor-enter p0

    const/4 v0, 0x1

    .line 200
    :try_start_0
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->pause:Z

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method restart()V
    .locals 1

    .line 192
    monitor-enter p0

    const/4 v0, 0x0

    .line 193
    :try_start_0
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->pause:Z

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->running:Z

    .line 165
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->pause:Z

    .line 166
    :goto_0
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->running:Z

    if-eqz v0, :cond_2

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->pause:Z

    if-eqz v0, :cond_0

    .line 169
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 171
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->running:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 171
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$400(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    invoke-direct {v0}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;-><init>()V

    const/4 v1, 0x2

    .line 177
    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setType(B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    .line 178
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$600(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;

    move-result-object v1

    invoke-virtual {v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneStatus;->getBytes()[B

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->setPayload([B)Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;

    .line 182
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/PlaneController$ControlTask;->this$0:Lapp/panchip_weinikang/planecontroller/common/PlaneController;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/PlaneController;->access$700(Lapp/panchip_weinikang/planecontroller/common/PlaneController;)Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;

    move-result-object v1

    invoke-virtual {v0}, Lapp/panchip_weinikang/planecontroller/common/CtrlCommand$Builder;->create()Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;

    move-result-object v0

    invoke-virtual {v1, v0}, Lapp/panchip_weinikang/planecontroller/udp/UdpSendSocket;->submitCmd(Lapp/panchip_weinikang/planecontroller/common/CtrlCommand;)V

    :cond_1
    const-wide/16 v0, 0x14

    .line 184
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
