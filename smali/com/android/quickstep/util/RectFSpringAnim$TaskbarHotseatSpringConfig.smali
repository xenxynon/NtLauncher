.class public Lcom/android/quickstep/util/RectFSpringAnim$TaskbarHotseatSpringConfig;
.super Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskbarHotseatSpringConfig"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/quickstep/util/RectFSpringAnim$1;)V

    invoke-static {p1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Li0/h;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->tracking:I

    const p2, 0x7f07055f

    invoke-interface {p1, p2}, Li0/h;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->stiffnessX:F

    const p2, 0x7f070561

    invoke-interface {p1, p2}, Li0/h;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->stiffnessY:F

    const p2, 0x7f07055e

    invoke-interface {p1, p2}, Li0/h;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->dampingX:F

    const p2, 0x7f070560

    invoke-interface {p1, p2}, Li0/h;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->dampingY:F

    const p2, 0x7f07055d

    invoke-interface {p1, p2}, Li0/h;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->rectStiffness:F

    return-void
.end method
