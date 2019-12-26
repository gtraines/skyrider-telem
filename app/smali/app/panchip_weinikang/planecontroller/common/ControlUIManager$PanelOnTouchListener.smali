.class Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;
.super Ljava/lang/Object;
.source "ControlUIManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelOnTouchListener"
.end annotation


# instance fields
.field private bottomY:I

.field private centerX:I

.field private centerY:I

.field private container:Landroid/view/View;

.field private handle:Landroid/view/View;

.field private handleRadius:I

.field private offsetX:I

.field private offsetY:I

.field private panelRadius:I

.field private root:Landroid/view/View;

.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

.field private which:I

.field private yawThreshold:I


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 497
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 491
    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    .line 498
    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->container:Landroid/view/View;

    .line 499
    iput-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handle:Landroid/view/View;

    .line 500
    iput p5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->which:I

    .line 501
    iput-object p4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->root:Landroid/view/View;

    .line 503
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->container:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    .line 504
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->container:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    .line 505
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->container:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handle:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->bottomY:I

    .line 506
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->container:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->offsetX:I

    .line 507
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->container:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->offsetY:I

    .line 509
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handle:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    .line 511
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->container:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handle:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    .line 512
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-float p1, p1

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->yawThreshold:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 517
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->which:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1700(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 519
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->offsetX:I

    sub-int/2addr p1, v1

    .line 520
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->offsetY:I

    sub-int/2addr v1, v2

    .line 521
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->which:I

    if-nez v2, :cond_2

    .line 522
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->yawThreshold:I

    if-gt v2, v3, :cond_1

    .line 523
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    goto :goto_0

    .line 525
    :cond_1
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->yawThreshold:I

    sub-int/2addr v2, v3

    .line 526
    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v2

    .line 527
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    .line 528
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    .line 533
    :cond_2
    :goto_0
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    .line 534
    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    .line 535
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 579
    :pswitch_0
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    .line 580
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->which:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$2000(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I

    move-result p2

    if-nez p2, :cond_3

    .line 581
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$400(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$400(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr p2, v1

    goto :goto_1

    .line 583
    :cond_3
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    .line 584
    :goto_1
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handle:Landroid/view/View;

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    sub-int v4, p1, v4

    iget v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    sub-int v5, p2, v5

    iget v6, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    add-int/2addr v6, p1

    iget v7, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    add-int/2addr v7, p2

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 585
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 586
    new-array v1, v3, [F

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    aput p1, v1, v2

    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    aput p1, v1, v0

    .line 587
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->which:I

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    .line 592
    :pswitch_1
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onDirectionPanelChange([F)V

    goto/16 :goto_4

    .line 589
    :pswitch_2
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onThrottlePanelChange([F)V

    goto/16 :goto_4

    .line 538
    :pswitch_3
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int p2, p1, p2

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int v4, p1, v4

    mul-int p2, p2, v4

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    sub-int v4, v1, v4

    iget v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    sub-int v5, v1, v5

    mul-int v4, v4, v5

    add-int/2addr p2, v4

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-double v6, p2

    cmpg-double p2, v4, v6

    if-gtz p2, :cond_4

    goto :goto_3

    .line 542
    :cond_4
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    .line 543
    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    sub-int v4, v1, v4

    int-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v8, p1, v6

    if-eqz v8, :cond_6

    .line 545
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    cmpg-double v1, p1, v6

    if-gez v1, :cond_5

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v4, p1

    .line 548
    :cond_5
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    int-to-double p1, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v6

    double-to-int p1, p1

    .line 549
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    int-to-double v6, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    double-to-int v1, v6

    goto :goto_3

    .line 551
    :cond_6
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    .line 552
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    if-le v1, p2, :cond_7

    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    add-int/2addr p2, v1

    :goto_2
    move v1, p2

    goto :goto_3

    :cond_7
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    sub-int/2addr p2, v1

    goto :goto_2

    .line 556
    :goto_3
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$000(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->which:I

    if-ne p2, v0, :cond_9

    .line 557
    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v4, v4, v5

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_8

    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    sub-int p2, v1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    cmpl-float p2, p2, v4

    if-lez p2, :cond_9

    .line 558
    :cond_8
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2, v2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$002(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Z)Z

    .line 559
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1800(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/os/CountDownTimer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 560
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$100(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/widget/ImageView;

    move-result-object p2

    const v4, 0x7f0600ca

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getControlProtocol()I

    move-result p2

    if-nez p2, :cond_9

    .line 562
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object p2

    const/4 v4, 0x7

    invoke-interface {p2, v4}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    .line 565
    :cond_9
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handle:Landroid/view/View;

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    sub-int v4, p1, v4

    iget v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    sub-int v5, v1, v5

    iget v6, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    add-int/2addr v6, p1

    iget v7, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->handleRadius:I

    add-int/2addr v7, v1

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 566
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 567
    new-array p2, v3, [F

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerX:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-float v3, v3

    div-float/2addr p1, v3

    aput p1, p2, v2

    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->centerY:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->panelRadius:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    aput p1, p2, v0

    .line 568
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->which:I

    packed-switch p1, :pswitch_data_2

    goto :goto_4

    .line 573
    :pswitch_4
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onDirectionPanelChange([F)V

    goto :goto_4

    .line 570
    :pswitch_5
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onThrottlePanelChange([F)V

    :cond_a
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
