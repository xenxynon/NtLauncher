.class public Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullscreenDrawParams"
.end annotation


# instance fields
.field private final mCornerRadius:F

.field public mCurrentDrawnCornerRadius:F

.field private final mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void
.end method

.method static synthetic access$2400(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    return p0
.end method


# virtual methods
.method public setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/systemui/shared/recents/utilities/PreviewPositionHelper;)V
    .locals 0

    iget p4, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    iget p5, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    invoke-static {p1, p4, p5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    div-float/2addr p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void
.end method
