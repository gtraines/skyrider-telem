.class Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;
.super Ljava/lang/Object;
.source "ControlUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 193
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$200(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$300(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v0

    new-instance v7, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$300(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$400(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$500(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 195
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$600(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v0

    new-instance v7, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$600(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$700(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$500(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0700e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;I)V

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$802(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    .line 197
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$800(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1000(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 198
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070093

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;I)V

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1102(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    .line 199
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1100(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1200(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 200
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f07007d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v5}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;I)V

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1302(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    .line 201
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1300(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    move-result-object v0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1400(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 203
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1500(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$600(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v5}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$700(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v5

    invoke-direct {v1, v2, v3, v5}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1602(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    .line 206
    :cond_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v0, v4}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$202(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Z)Z

    :cond_1
    return-void
.end method
