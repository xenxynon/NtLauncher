.class Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SwipePipToHomeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotatedPosition"
.end annotation


# instance fields
.field private final degree:F

.field private final positionX:F

.field private final positionY:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->degree:F

    iput p2, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->positionX:F

    iput p3, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->positionY:F

    return-void
.end method

.method synthetic constructor <init>(FFFLcom/android/quickstep/util/SwipePipToHomeAnimator$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;-><init>(FFF)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->degree:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->positionX:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$RotatedPosition;->positionY:F

    return p0
.end method
