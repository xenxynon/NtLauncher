.class public Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$b;,
        Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;,
        Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;
    }
.end annotation


# static fields
.field private static final C:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

.field private final B:Landroid/animation/AnimatorListenerAdapter;

.field private final a:I
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation
.end field

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Landroid/view/animation/Interpolator;

.field private t:Z

.field private final u:Landroid/view/View;

.field private final v:Landroid/os/Handler;

.field private final w:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;

.field private final z:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f4ccccd    # 0.8f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .param p3    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$b;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$a;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;

    const-string v1, "exitHardware"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->y:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;

    const-string v1, "enterHardware"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->h:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->A:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$a;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$a;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->B:Landroid/animation/AnimatorListenerAdapter;

    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:I

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k()V

    return-void
.end method

.method public static synthetic b(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j()V

    return-void
.end method

.method static synthetic c(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic d(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l:Z

    return p0
.end method

.method static synthetic e(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    return p1
.end method

.method static synthetic f(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->n:Z

    return p1
.end method

.method private g(Landroid/graphics/RecordingCanvas;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->A:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->h:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->g:Landroid/graphics/CanvasProperty;

    iget-object v8, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->h:Landroid/graphics/CanvasProperty;

    iget-object v9, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v2, v2

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v3, :cond_2

    move v4, v2

    :cond_2
    if-eqz v3, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->A:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    sget-object v3, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;->h:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    if-ne p0, v3, :cond_4

    sub-float p0, v1, v5

    sub-float v3, v2, v4

    add-float/2addr v5, v1

    add-float v6, v2, v4

    move-object v1, p1

    move v2, p0

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    neg-float v3, v5

    move-object v1, p1

    move v2, v3

    move v4, v5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_3
    return-void
.end method

.method private i(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyButtonRipple.endAnim: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cancel="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private j()V
    .locals 9

    const-string v0, "enterHardware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->n:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w(Landroid/graphics/CanvasProperty;)V

    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->p()Landroid/graphics/CanvasProperty;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faccccd    # 1.35f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->B:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v(Landroid/graphics/CanvasProperty;)V

    new-instance v3, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->n()Landroid/graphics/CanvasProperty;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v3, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->B:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->g:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->g:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_0
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->h:Landroid/graphics/CanvasProperty;

    iput v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l()V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 3

    const-string v0, "enterSoftware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "glowScale"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->B:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private l()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->B:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->y:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$c;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "glowAlpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->B:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private n()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object p0
.end method

.method private o()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t()Z

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method private p()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object p0
.end method

.method private q()F
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->p:Z

    if-eqz p0, :cond_0

    const p0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const p0, 0x3e4ccccd    # 0.2f

    :goto_0
    return p0
.end method

.method private r()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->p:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    return-object p0
.end method

.method private s()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private t()Z
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private v(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->e:Landroid/graphics/CanvasProperty;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->f:Landroid/graphics/CanvasProperty;

    :goto_0
    return-void
.end method

.method private w(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->c:Landroid/graphics/CanvasProperty;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->d:Landroid/graphics/CanvasProperty;

    :goto_0
    return-void
.end method

.method private y(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Landroid/os/Handler;

    new-instance v0, Lh0/b;

    invoke-direct {v0, p0}, Lh0/b;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    if-eqz p1, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l()V

    :cond_3
    :goto_0
    return-void
.end method

.method private z(Z)V
    .locals 3

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->w:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->v:Landroid/os/Handler;

    new-instance v0, Lh0/a;

    invoke-direct {v0, p0}, Lh0/a;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m:Z

    if-eqz p1, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->m()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public A(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->A:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$d;

    return-void
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->o:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t:Z

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->g(Landroid/graphics/RecordingCanvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->h(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getGlowAlpha()F
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    return p0
.end method

.method public getGlowScale()F
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public hasFocusStateSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 2

    const-string v0, "jumpToCurrentState"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->i(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    const v4, 0x10100a7

    if-ne v2, v4, :cond_0

    move p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l:Z

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->x(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->l:Z

    return v3

    :cond_2
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->j:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setGlowScale(F)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->k:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->jumpToCurrentState()V

    :cond_0
    return p1
.end method

.method public u(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q:Z

    return-void
.end method

.method public x(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->q:Z

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->p:Z

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->b:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->p:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->t:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->y(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->z(Z)V

    :goto_0
    return-void
.end method
