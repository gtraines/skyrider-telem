.class public Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;
.super Landroid/app/Activity;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private navigationBar:Landroid/view/View;

.field private photoView:Lcom/github/chrisbanes/photoview/PhotoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;)Landroid/view/View;
    .locals 0

    .line 16
    iget-object p0, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->navigationBar:Landroid/view/View;

    return-object p0
.end method

.method private init()V
    .locals 2

    const v0, 0x7f070025

    .line 30
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070072

    .line 31
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->navigationBar:Landroid/view/View;

    const v0, 0x7f070085

    .line 32
    invoke-virtual {p0, v0}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    .line 33
    iget-object v0, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance v1, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity$1;

    invoke-direct {v1, p0}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity$1;-><init>(Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnPhotoTapListener(Lcom/github/chrisbanes/photoview/OnPhotoTapListener;)V

    .line 40
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07004f

    .line 41
    invoke-virtual {p0, v1}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->photoView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070025

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090034

    .line 24
    invoke-virtual {p0, p1}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lapp/panchip_weinikang/planecontroller/activity/PreviewActivity;->init()V

    return-void
.end method
