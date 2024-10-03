.class abstract Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SpringConfig"
.end annotation


# instance fields
.field protected dampingX:F

.field protected dampingY:F

.field protected maxVelocityPxPerS:I

.field protected minVisChange:F

.field protected rectStiffness:F

.field protected startRect:Landroid/graphics/RectF;

.field protected stiffnessX:F

.field protected stiffnessY:F

.field protected targetRect:Landroid/graphics/RectF;

.field protected tracking:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->startRect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->targetRect:Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Li0/h;

    move-result-object p1

    const p2, 0x7f070506

    invoke-interface {p1, p2}, Li0/h;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->minVisChange:F

    const p2, 0x7f070507

    invoke-interface {p1, p2}, Li0/h;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;->maxVelocityPxPerS:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/quickstep/util/RectFSpringAnim$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/RectFSpringAnim$SpringConfig;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method
