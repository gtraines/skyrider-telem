.class public Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;
.super Ljava/lang/Object;
.source "GlobalSettings.java"


# static fields
.field public static final ControlProtocolNames:[Ljava/lang/String;

.field public static final PROTOCOL_PVTM:I = 0x1

.field public static final PROTOCOL_YD:I

.field private static autoSave:Z

.field private static controlProtocol:I

.field private static pitchTrim:I

.field private static preferences:Landroid/content/SharedPreferences;

.field private static rightHandMode:Z

.field private static rollTrim:I

.field private static yawTrim:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PVTM-01"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PVTM-02"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->ControlProtocolNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeAutoSavePreference(Z)V
    .locals 2

    .line 90
    sput-boolean p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->autoSave:Z

    .line 91
    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoSave"

    .line 92
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->resetFlightArguments()V

    return-void
.end method

.method public static changeControlProtocol(I)V
    .locals 2

    .line 59
    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->controlProtocol:I

    .line 60
    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "controlProtocol"

    .line 61
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static changeRightHandModePreference(Z)V
    .locals 2

    .line 99
    sput-boolean p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rightHandMode:Z

    .line 100
    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rightHand"

    .line 101
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getControlProtocol()I
    .locals 1

    .line 51
    sget v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->controlProtocol:I

    return v0
.end method

.method public static getControlProtocolName()Ljava/lang/String;
    .locals 2

    .line 55
    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->ControlProtocolNames:[Ljava/lang/String;

    sget v1, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->controlProtocol:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getPitchTrim()I
    .locals 1

    .line 82
    sget v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    return v0
.end method

.method public static getRollTrim()I
    .locals 1

    .line 74
    sget v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    return v0
.end method

.method public static getYawTrim()I
    .locals 1

    .line 66
    sget v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    const-string v0, "settings"

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    .line 27
    sget-object p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "autoSave"

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->autoSave:Z

    .line 28
    sget-object p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "rightHand"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rightHandMode:Z

    .line 29
    sget-object p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "controlProtocol"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->controlProtocol:I

    .line 31
    sget-boolean p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->autoSave:Z

    if-eqz p0, :cond_0

    .line 32
    sget-object p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "yawTrim"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    .line 33
    sget-object p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "rollTrim"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    .line 34
    sget-object p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "pitchTrim"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    goto :goto_0

    .line 36
    :cond_0
    sput v1, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    .line 37
    sput v1, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    .line 38
    sput v1, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    :goto_0
    return-void
.end method

.method public static isAutoSave()Z
    .locals 1

    .line 43
    sget-boolean v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->autoSave:Z

    return v0
.end method

.method public static isRightHandMode()Z
    .locals 1

    .line 47
    sget-boolean v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rightHandMode:Z

    return v0
.end method

.method public static resetFlightArguments()V
    .locals 3

    const/4 v0, 0x0

    .line 106
    sput v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    .line 107
    sput v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    .line 108
    sput v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    .line 110
    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "yawTrim"

    .line 111
    sget v2, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "rollTrim"

    .line 112
    sget v2, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pitchTrim"

    .line 113
    sget v2, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveFlightArguments()V
    .locals 4

    .line 118
    sget-object v0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "save"

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "yawTrim"

    .line 120
    sget v2, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "rollTrim"

    .line 121
    sget v2, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pitchTrim"

    .line 122
    sget v2, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPitchTrim(I)V
    .locals 0

    .line 86
    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->pitchTrim:I

    return-void
.end method

.method public static setRollTrim(I)V
    .locals 0

    .line 78
    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->rollTrim:I

    return-void
.end method

.method public static setYawTrim(I)V
    .locals 0

    .line 70
    sput p0, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->yawTrim:I

    return-void
.end method
