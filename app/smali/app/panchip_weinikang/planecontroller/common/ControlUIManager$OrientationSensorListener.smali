.class Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;
.super Ljava/lang/Object;
.source "ControlUIManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationSensorListener"
.end annotation


# static fields
.field static final MAX_ARC:D = 0.7853981633974483


# instance fields
.field angleX:D

.field angleY:D

.field centerX:I

.field centerY:I

.field container:Landroid/view/View;

.field gravityValues:[F

.field handle:Landroid/view/View;

.field handleRadius:I

.field magneticValues:[F

.field panelRadius:I

.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 616
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 613
    new-array v0, p1, [F

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->gravityValues:[F

    .line 614
    new-array p1, p1, [F

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->magneticValues:[F

    .line 617
    iput-object p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->container:Landroid/view/View;

    .line 618
    iput-object p3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handle:Landroid/view/View;

    .line 620
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->centerX:I

    .line 621
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->centerY:I

    .line 622
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handleRadius:I

    .line 623
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->centerX:I

    iget p2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handleRadius:I

    sub-int/2addr p1, p2

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->panelRadius:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 628
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 629
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->gravityValues:[F

    goto :goto_0

    .line 630
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 631
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->magneticValues:[F

    .line 633
    :cond_1
    :goto_0
    new-array p1, v1, [F

    const/4 v0, 0x3

    .line 634
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 635
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->gravityValues:[F

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->magneticValues:[F

    invoke-static {p1, v1, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 637
    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 p1, 0x1

    .line 638
    aget v1, v0, p1

    float-to-double v3, v1

    iput-wide v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleX:D

    .line 639
    aget v0, v0, v2

    float-to-double v0, v0

    iput-wide v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleY:D

    .line 641
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleX:D

    iget-wide v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleX:D

    mul-double v0, v0, v3

    iget-wide v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleY:D

    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleY:D

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v3, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpl-double v5, v0, v3

    if-lez v5, :cond_2

    div-double v0, v3, v0

    .line 644
    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleX:D

    mul-double v5, v5, v0

    iput-wide v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleX:D

    .line 645
    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleY:D

    mul-double v5, v5, v0

    iput-wide v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleY:D

    .line 648
    :cond_2
    iget-wide v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleX:D

    neg-double v0, v0

    div-double/2addr v0, v3

    double-to-float v0, v0

    .line 649
    iget-wide v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->angleY:D

    div-double/2addr v5, v3

    double-to-float v1, v5

    .line 651
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$000(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 652
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_4

    .line 653
    :cond_3
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3, v4}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$002(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Z)Z

    .line 654
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1800(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 655
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$100(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/widget/ImageView;

    move-result-object v3

    const v5, 0x7f0600ca

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getControlProtocol()I

    move-result v3

    if-nez v3, :cond_4

    .line 657
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object v3

    const/4 v5, 0x7

    invoke-interface {v3, v5}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    .line 660
    :cond_4
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 661
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->this$0:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;

    invoke-static {v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    move-result-object v3

    new-array v2, v2, [F

    aput v0, v2, v4

    aput v1, v2, p1

    invoke-interface {v3, v2}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onDirectionPanelChange([F)V

    .line 663
    :cond_5
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->panelRadius:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 664
    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->panelRadius:I

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 666
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handle:Landroid/view/View;

    iget v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->centerX:I

    add-int/2addr v2, p1

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handleRadius:I

    sub-int/2addr v2, v3

    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->centerY:I

    sub-int/2addr v3, v0

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handleRadius:I

    sub-int/2addr v3, v4

    iget v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->centerX:I

    add-int/2addr v4, p1

    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handleRadius:I

    add-int/2addr v4, p1

    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->centerY:I

    sub-int/2addr p1, v0

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;->handleRadius:I

    add-int/2addr p1, v0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
