.class public Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;
.super Ljava/lang/Object;
.source "ControlUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;,
        Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;,
        Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$PanelOnTouchListener;,
        Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;
    }
.end annotation


# static fields
.field private static final DIRECTION_PANEL:I = 0x1

.field private static final FLIP_THRESHOLD:F = 0.8f

.field private static final FLIP_TIMEOUT:I = 0x1388

.field private static final SPEED_DRAWABLE_IDS:[I

.field private static final THROTTLE_PANEL:I = 0x0

.field private static final TRIM_MAX:I = 0x1f

.field private static final TRIM_MIN:I = -0x1f

.field private static final TRIM_OFFSET:I = 0x20

.field private static final YAW_VALID_THRESHOLD:F = 0.25f


# instance fields
.field private altHoldButtons:Landroid/view/View;

.field private altHoldCtrl:Landroid/widget/ImageView;

.field private altHoldMode:I

.field private cameraReversed:Z

.field private context:Landroid/content/Context;

.field private controlLayer:Landroid/view/View;

.field private controlPanel:Landroid/view/View;

.field private controlPanelCtrl:Landroid/widget/ImageView;

.field private controlPanelVisible:Z

.field private directionHandle:Landroid/view/View;

.field private directionPanel:Landroid/view/View;

.field private flipBtn:Landroid/widget/ImageView;

.field private flipCountDownTimer:Landroid/os/CountDownTimer;

.field private gravitySensor:Landroid/hardware/Sensor;

.field private gyroscopeCtrl:Landroid/widget/ImageView;

.field private gyroscopeEnabled:Z

.field private hasOrientationSensor:Z

.field private headlessCtrl:Landroid/widget/ImageView;

.field private headlessEnable:I

.field private initialized:Z

.field private lightCtrl:Landroid/widget/ImageView;

.field private lightON:I

.field private listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

.field private magneticSensor:Landroid/hardware/Sensor;

.field private orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

.field private pitchTrim:I

.field private pitchTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

.field private resetSize:Landroid/widget/ImageView;

.field private revCtrl:Landroid/widget/ImageView;

.field private rollTrim:I

.field private rollTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private settingBtn:Landroid/widget/ImageView;

.field private settingButtons:Landroid/view/View;

.field private speed:I

.field private speedCtrl:Landroid/widget/ImageView;

.field private throttleHandle:Landroid/view/View;

.field private throttlePanel:Landroid/view/View;

.field private waiting:Landroid/widget/PopupWindow;

.field private waitingForFlip:Z

.field private yawTrim:I

.field private yawTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->SPEED_DRAWABLE_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0600b4
        0x7f0600b5
        0x7f0600b3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->initialized:Z

    .line 82
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waitingForFlip:Z

    .line 83
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->cameraReversed:Z

    .line 100
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->context:Landroid/content/Context;

    const-string v1, "sensor"

    .line 102
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 103
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gravitySensor:Landroid/hardware/Sensor;

    .line 104
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->magneticSensor:Landroid/hardware/Sensor;

    .line 105
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gravitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->magneticSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->hasOrientationSensor:Z

    .line 108
    check-cast p1, Landroid/app/Activity;

    const v1, 0x7f070037

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    .line 110
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v3, 0x7f070039

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelCtrl:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelCtrl:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v3, 0x7f070038

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanel:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanel:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelVisible:Z

    .line 116
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v3, 0x7f070055

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeCtrl:Landroid/widget/ImageView;

    .line 117
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeCtrl:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeEnabled:Z

    .line 120
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v3, 0x7f0700b7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speedCtrl:Landroid/widget/ImageView;

    .line 121
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speedCtrl:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speed:I

    .line 124
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v3, 0x7f070064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightCtrl:Landroid/widget/ImageView;

    .line 125
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightCtrl:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightON:I

    .line 128
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessCtrl:Landroid/widget/ImageView;

    .line 129
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessCtrl:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessEnable:I

    .line 132
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->revCtrl:Landroid/widget/ImageView;

    .line 133
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->revCtrl:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->resetSize:Landroid/widget/ImageView;

    .line 136
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->resetSize:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f07001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldCtrl:Landroid/widget/ImageView;

    .line 140
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldCtrl:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldMode:I

    .line 142
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldButtons:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingBtn:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f0700ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingButtons:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f0700e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f0700e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->isAutoSave()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getYawTrim()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    .line 152
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->isAutoSave()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getRollTrim()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    .line 156
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->isAutoSave()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getPitchTrim()I

    move-result v0

    :cond_3
    iput v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    .line 162
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipBtn:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$1;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x1388

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$1;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;JJ)V

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipCountDownTimer:Landroid/os/CountDownTimer;

    .line 176
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700c9

    .line 185
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttlePanel:Landroid/view/View;

    const v0, 0x7f0700c8

    .line 186
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttleHandle:Landroid/view/View;

    const v0, 0x7f070042

    .line 188
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->directionPanel:Landroid/view/View;

    const v0, 0x7f070041

    .line 189
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->directionHandle:Landroid/view/View;

    .line 190
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanel:Landroid/view/View;

    new-instance v0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;

    invoke-direct {v0, p0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$2;-><init>(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 211
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->initPopupWindow()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waitingForFlip:Z

    return p0
.end method

.method static synthetic access$002(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waitingForFlip:Z

    return p1
.end method

.method static synthetic access$100(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I
    .locals 0

    .line 22
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    return p0
.end method

.method static synthetic access$1100(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    return-object p0
.end method

.method static synthetic access$1102(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;
    .locals 0

    .line 22
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    return-object p1
.end method

.method static synthetic access$1200(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I
    .locals 0

    .line 22
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    return p0
.end method

.method static synthetic access$1300(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    return-object p0
.end method

.method static synthetic access$1302(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;
    .locals 0

    .line 22
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    return-object p1
.end method

.method static synthetic access$1400(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I
    .locals 0

    .line 22
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    return p0
.end method

.method static synthetic access$1500(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->hasOrientationSensor:Z

    return p0
.end method

.method static synthetic access$1602(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;
    .locals 0

    .line 22
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    return-object p1
.end method

.method static synthetic access$1700(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeEnabled:Z

    return p0
.end method

.method static synthetic access$1800(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/os/CountDownTimer;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipCountDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$1900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    return-object p0
.end method

.method static synthetic access$200(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->initialized:Z

    return p0
.end method

.method static synthetic access$2000(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)I
    .locals 0

    .line 22
    iget p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldMode:I

    return p0
.end method

.method static synthetic access$202(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->initialized:Z

    return p1
.end method

.method static synthetic access$300(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttlePanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttleHandle:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->directionPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->directionHandle:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    return-object p0
.end method

.method static synthetic access$802(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;)Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;
    .locals 0

    .line 22
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    return-object p1
.end method

.method static synthetic access$900(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    return-object p0
.end method

.method private initPopupWindow()V
    .locals 4

    .line 467
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f09003c

    const/4 v2, 0x0

    .line 468
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 469
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    .line 470
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 471
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 473
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 474
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method private resetDirectionPanel()V
    .locals 5

    .line 237
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->directionPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 238
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->directionHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    .line 239
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->directionHandle:Landroid/view/View;

    sub-int v4, v0, v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v4, v0, v0}, Landroid/view/View;->layout(IIII)V

    .line 240
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onDirectionPanelChange([F)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private resetThrottlePanel()V
    .locals 7

    .line 246
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttleHandle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 247
    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttlePanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    .line 248
    iget v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldMode:I

    if-nez v3, :cond_0

    .line 249
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttlePanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttleHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    .line 250
    iget-object v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttleHandle:Landroid/view/View;

    sub-int v5, v2, v0

    sub-int v6, v3, v0

    add-int/2addr v2, v0

    add-int/2addr v3, v0

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 251
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onThrottlePanelChange([F)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v3, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->throttleHandle:Landroid/view/View;

    sub-int v4, v2, v0

    add-int/2addr v2, v0

    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/view/View;->layout(IIII)V

    .line 255
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-interface {v0, v1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onThrottlePanelChange([F)V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public dismissWaitingPop()V
    .locals 1

    .line 482
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x3

    const/16 v1, 0x1f

    const/16 v2, -0x1f

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 307
    :sswitch_0
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    if-ge p1, v1, :cond_b

    .line 308
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    add-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    .line 309
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setYawTrim(I)V

    .line 310
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 311
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_b

    .line 312
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onYawTrimChange(I)V

    goto/16 :goto_4

    .line 298
    :sswitch_1
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    if-le p1, v2, :cond_b

    .line 299
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    sub-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    .line 300
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setYawTrim(I)V

    .line 301
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 302
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_b

    .line 303
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onYawTrimChange(I)V

    goto/16 :goto_4

    .line 456
    :sswitch_2
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    invoke-interface {p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onTakeVideo()Z

    goto/16 :goto_4

    .line 438
    :sswitch_3
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    goto/16 :goto_4

    .line 444
    :sswitch_4
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    goto/16 :goto_4

    .line 373
    :sswitch_5
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speed:I

    add-int/2addr p1, v5

    rem-int/2addr p1, v0

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speed:I

    .line 374
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speedCtrl:Landroid/widget/ImageView;

    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->SPEED_DRAWABLE_IDS:[I

    iget v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speed:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->speed:I

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onSpeedChange(I)V

    goto/16 :goto_4

    .line 396
    :sswitch_6
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingButtons:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 397
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingButtons:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingBtn:Landroid/widget/ImageView;

    const v0, 0x7f0600af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 400
    :cond_0
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingButtons:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->settingBtn:Landroid/widget/ImageView;

    const v0, 0x7f0600b0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 325
    :sswitch_7
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    if-ge p1, v1, :cond_b

    .line 326
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    add-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    .line 327
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setRollTrim(I)V

    .line 328
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 329
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_b

    .line 330
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onRollTrimChange(I)V

    goto/16 :goto_4

    .line 316
    :sswitch_8
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    if-le p1, v2, :cond_b

    .line 317
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    sub-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    .line 318
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setRollTrim(I)V

    .line 319
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 320
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_b

    .line 321
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onRollTrimChange(I)V

    goto/16 :goto_4

    .line 405
    :sswitch_9
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->cameraReversed:Z

    if-eqz p1, :cond_1

    .line 406
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->revCtrl:Landroid/widget/ImageView;

    const v0, 0x7f0600ab

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->revCtrl:Landroid/widget/ImageView;

    const v0, 0x7f0600ac

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    :goto_0
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->cameraReversed:Z

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->cameraReversed:Z

    .line 410
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->cameraReversed:Z

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onCameraReverseChange(Z)V

    goto/16 :goto_4

    .line 353
    :sswitch_a
    iput v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    .line 354
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setYawTrim(I)V

    .line 355
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 356
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_2

    .line 357
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onYawTrimChange(I)V

    .line 359
    :cond_2
    iput v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    .line 360
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setRollTrim(I)V

    .line 361
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 362
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_3

    .line 363
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onRollTrimChange(I)V

    .line 365
    :cond_3
    iput v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    .line 366
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setPitchTrim(I)V

    .line 367
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 368
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_b

    .line 369
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onPitchTrimChange(I)V

    goto/16 :goto_4

    .line 343
    :sswitch_b
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    if-ge p1, v1, :cond_b

    .line 344
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    add-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    .line 345
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setPitchTrim(I)V

    .line 346
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 347
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_b

    .line 348
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onPitchTrimChange(I)V

    goto/16 :goto_4

    .line 334
    :sswitch_c
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    if-le p1, v2, :cond_b

    .line 335
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    sub-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    .line 336
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    invoke-static {p1}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->setPitchTrim(I)V

    .line 337
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 338
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    if-eqz p1, :cond_b

    .line 339
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onPitchTrimChange(I)V

    goto/16 :goto_4

    .line 453
    :sswitch_d
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    invoke-interface {p1}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onTakePhoto()Z

    goto/16 :goto_4

    .line 450
    :sswitch_e
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    goto/16 :goto_4

    .line 378
    :sswitch_f
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightON:I

    xor-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightON:I

    .line 379
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightON:I

    if-ne p1, v5, :cond_4

    .line 380
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightCtrl:Landroid/widget/ImageView;

    const v0, 0x7f06008d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 382
    :cond_4
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightCtrl:Landroid/widget/ImageView;

    const v0, 0x7f06008c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    :goto_1
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->lightON:I

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onLightCtrlChange(I)V

    goto/16 :goto_4

    .line 441
    :sswitch_10
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    invoke-interface {p1, v3}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    goto/16 :goto_4

    .line 387
    :sswitch_11
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessEnable:I

    xor-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessEnable:I

    .line 388
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessEnable:I

    if-ne p1, v5, :cond_5

    .line 389
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessCtrl:Landroid/widget/ImageView;

    const v0, 0x7f060079

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 391
    :cond_5
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessCtrl:Landroid/widget/ImageView;

    const v0, 0x7f060078

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    :goto_2
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->headlessEnable:I

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onHeadlessModeChange(I)V

    goto/16 :goto_4

    .line 280
    :sswitch_12
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->hasOrientationSensor:Z

    if-nez p1, :cond_6

    .line 281
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->context:Landroid/content/Context;

    const-string v0, "\u60a8\u7684\u8bbe\u5907\u672a\u914d\u5907\u91cd\u529b\u4f20\u611f\u5668\u6216\u5730\u78c1\u4f20\u611f\u5668,\u8bf7\u4f7f\u7528\u624b\u52a8\u64cd\u4f5c"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 284
    :cond_6
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeEnabled:Z

    if-eqz p1, :cond_7

    .line 285
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeCtrl:Landroid/widget/ImageView;

    const v0, 0x7f06006f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 287
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->magneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 288
    iput-boolean v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeEnabled:Z

    .line 289
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->resetDirectionPanel()V

    goto/16 :goto_4

    .line 291
    :cond_7
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeCtrl:Landroid/widget/ImageView;

    const v0, 0x7f060070

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 293
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->magneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 294
    iput-boolean v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeEnabled:Z

    goto/16 :goto_4

    .line 426
    :sswitch_13
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waitingForFlip:Z

    if-nez p1, :cond_8

    .line 427
    iput-boolean v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waitingForFlip:Z

    .line 428
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 429
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipBtn:Landroid/widget/ImageView;

    const v0, 0x7f0600cb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    invoke-interface {p1, v4}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    goto/16 :goto_4

    .line 432
    :cond_8
    iput-boolean v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waitingForFlip:Z

    .line 433
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 434
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->flipBtn:Landroid/widget/ImageView;

    const v0, 0x7f0600ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 264
    :sswitch_14
    iget-boolean p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelVisible:Z

    if-eqz p1, :cond_9

    .line 265
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelCtrl:Landroid/widget/ImageView;

    const v0, 0x7f06007c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanel:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iput-boolean v4, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelVisible:Z

    .line 268
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    invoke-interface {p1, v5}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onVideoCtrlChange(Z)V

    goto :goto_4

    .line 270
    :cond_9
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelCtrl:Landroid/widget/ImageView;

    const v0, 0x7f0600b2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanel:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iput-boolean v5, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlPanelVisible:Z

    .line 273
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->yawTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 274
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->pitchTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 275
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrimUIManager:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->rollTrim:I

    invoke-virtual {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$TrimUIManager;->invalidate(I)V

    .line 276
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    invoke-interface {p1, v4}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onVideoCtrlChange(Z)V

    goto :goto_4

    .line 413
    :sswitch_15
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldMode:I

    xor-int/2addr p1, v5

    iput p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldMode:I

    .line 414
    iget p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldMode:I

    if-ne p1, v5, :cond_a

    .line 415
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldCtrl:Landroid/widget/ImageView;

    const v0, 0x7f060059

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldButtons:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 418
    :cond_a
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldCtrl:Landroid/widget/ImageView;

    const v0, 0x7f060058

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldButtons:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :goto_3
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->resetThrottlePanel()V

    .line 422
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    iget v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->altHoldMode:I

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAltHoldModeChange(I)V

    goto :goto_4

    .line 447
    :sswitch_16
    iget-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;->onAction(I)V

    :cond_b
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07001b -> :sswitch_16
        0x7f07001f -> :sswitch_15
        0x7f070039 -> :sswitch_14
        0x7f070051 -> :sswitch_13
        0x7f070055 -> :sswitch_12
        0x7f070056 -> :sswitch_11
        0x7f070063 -> :sswitch_10
        0x7f070064 -> :sswitch_f
        0x7f070079 -> :sswitch_e
        0x7f07007b -> :sswitch_d
        0x7f070080 -> :sswitch_c
        0x7f070081 -> :sswitch_b
        0x7f07008d -> :sswitch_a
        0x7f07008e -> :sswitch_9
        0x7f070096 -> :sswitch_8
        0x7f070097 -> :sswitch_7
        0x7f0700af -> :sswitch_6
        0x7f0700b7 -> :sswitch_5
        0x7f0700bd -> :sswitch_4
        0x7f0700c1 -> :sswitch_3
        0x7f0700da -> :sswitch_2
        0x7f0700e4 -> :sswitch_1
        0x7f0700e5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 1

    .line 231
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 224
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeEnabled:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 226
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->magneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 215
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->resetDirectionPanel()V

    .line 216
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->resetThrottlePanel()V

    .line 217
    iget-boolean v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gyroscopeEnabled:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->gravitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 219
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->orientationSensorListener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$OrientationSensorListener;

    iget-object v2, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->magneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public setControlListener(Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->listener:Lapp/panchip_weinikang/planecontroller/common/ControlUIManager$ControlListener;

    return-void
.end method

.method public showWaitingPop()V
    .locals 4

    .line 478
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->waiting:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/common/ControlUIManager;->controlLayer:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
