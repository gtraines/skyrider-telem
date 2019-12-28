.class Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;
.super Ljava/lang/Object;
.source "MediaListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;


# direct methods
.method constructor <init>(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 86
    :pswitch_0
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$000(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 87
    :goto_0
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object v0

    array-length v0, v0

    if-eq p2, v0, :cond_1

    .line 88
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v0}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$100(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {v1}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$200(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$300(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V

    .line 95
    iget-object p2, p0, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity$1;->this$0:Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;

    invoke-static {p2}, Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;->access$400(Lapp/panchip_weinikang/planecontroller/activity/MediaListActivity;)V

    .line 97
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
