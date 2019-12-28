.class Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 61
    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->changeControlProtocol(I)V

    .line 62
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/SettingsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {}, Lapp/panchip_weinikang/planecontroller/common/GlobalSettings;->getControlProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
