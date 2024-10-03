.class Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimOpenProperties"
.end annotation


# instance fields
.field public final cropCenterXEnd:I

.field public final cropCenterXStart:I

.field public final cropCenterYEnd:I

.field public final cropCenterYStart:I

.field public final cropHeightEnd:I

.field public final cropHeightStart:I

.field public final cropWidthEnd:I

.field public final cropWidthStart:I

.field public final dX:F

.field public final dY:F

.field public final finalAppIconScale:F

.field public final iconAlphaStart:F

.field public final initialAppIconScale:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/view/View;IIZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v0, p2, v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr p2, v1

    instance-of v1, p5, Lcom/android/launcher3/BubbleTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v1, :cond_0

    check-cast p5, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p5}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p5

    instance-of v1, p5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {p5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result p5

    goto :goto_0

    :cond_0
    move p5, v2

    :goto_0
    iput p5, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->initialAppIconScale:F

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->finalAppIconScale:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    sub-int/2addr p2, p6

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p5

    sub-int/2addr p5, p7

    int-to-float p5, p5

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p6

    sub-float/2addr p2, p6

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dX:F

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p5, p2

    iput p5, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->dY:F

    if-eqz p8, :cond_1

    if-nez p9, :cond_1

    const/4 v2, 0x0

    :cond_1
    iput v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->iconAlphaStart:F

    const/16 p2, 0x6c

    const-string p5, "starting_surface_icon_size"

    invoke-static {p5, p1, p2}, Lcom/android/launcher3/testing/shared/ResourceUtils;->getDimenByName(Ljava/lang/String;Landroid/content/res/Resources;I)I

    move-result p1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p2

    int-to-float p5, p1

    cmpl-float p2, p2, p5

    if-lez p2, :cond_2

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXStart:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYStart:I

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthStart:I

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightStart:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropWidthEnd:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropHeightEnd:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterXEnd:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AnimOpenProperties;->cropCenterYEnd:I

    return-void
.end method
