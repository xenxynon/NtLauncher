.class Lcom/android/launcher3/util/FlingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/FlingAnimation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mOffset:F

.field final synthetic this$0:Lcom/android/launcher3/util/FlingAnimation;

.field final synthetic val$duration:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/FlingAnimation;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->this$0:Lcom/android/launcher3/util/FlingAnimation;

    iput-wide p2, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$startTime:J

    iput p4, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    if-gez v0, :cond_0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$startTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation$1;->val$duration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mCount:I

    goto :goto_0

    :cond_1
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/android/launcher3/util/FlingAnimation$1;->mOffset:F

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
