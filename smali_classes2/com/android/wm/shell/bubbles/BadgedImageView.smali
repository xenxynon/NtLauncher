.class public Lcom/android/wm/shell/bubbles/BadgedImageView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BadgedImageView$b;
    }
.end annotation


# instance fields
.field private final g:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/wm/shell/bubbles/BadgedImageView$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroid/widget/ImageView;

.field private j:F

.field private k:F

.field private l:Z

.field private m:Lcom/android/wm/shell/bubbles/e;

.field private n:Z

.field private o:Lcom/android/launcher3/icons/DotRenderer;

.field private p:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

.field private q:I

.field private r:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$b;->g:Lcom/android/wm/shell/bubbles/BadgedImageView$b;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->g:Ljava/util/EnumSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->j:F

    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->l:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lu0/e;->a:I

    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lu0/d;->q:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->h:Landroid/widget/ImageView;

    sget v1, Lu0/d;->a:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x1010119

    aput v4, v3, v0

    invoke-virtual {v1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p1}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->p:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    new-instance p1, Lcom/android/wm/shell/bubbles/BadgedImageView$a;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BadgedImageView$a;-><init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method static synthetic d(Lcom/android/wm/shell/bubbles/BadgedImageView;Landroid/graphics/Outline;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method private f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->m:Lcom/android/wm/shell/bubbles/e;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->g:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getOutline(Landroid/graphics/Outline;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->p:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->q:I

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->dotColor:I

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->r:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->n:Z

    iput-boolean v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    iget v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->j:F

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->o:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    return-void
.end method

.method e(Landroid/graphics/Path;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method getDotCenter()[F
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->o:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getLeftDotPosition()[F

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->o:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getRightDotPosition()[F

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    mul-float/2addr v1, v3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->r:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x1

    aget v0, v0, v3

    mul-float/2addr p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    aput p0, v0, v3

    return-object v0
.end method

.method getDotColor()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->q:I

    return p0
.end method

.method getDotOnLeft()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->n:Z

    return p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->m:Lcom/android/wm/shell/bubbles/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/e;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method hideBadge()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->i:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method setDotBadgeOnLeft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->n:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    return-void
.end method

.method setDotScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->j:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setIconImageResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRenderedBubble(Lcom/android/wm/shell/bubbles/e;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->m:Lcom/android/wm/shell/bubbles/e;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->h:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/e;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->i:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/e;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->g:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/wm/shell/bubbles/BadgedImageView$b;->h:Lcom/android/wm/shell/bubbles/BadgedImageView$b;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideBadge()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    :goto_0
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/e;->d()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->q:I

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/e;->a()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->e(Landroid/graphics/Path;)V

    return-void
.end method

.method showBadge()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->m:Lcom/android/wm/shell/bubbles/e;

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/e;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->i:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->m:Lcom/android/wm/shell/bubbles/e;

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/e;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    neg-int v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->i:Landroid/widget/ImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BadgedImageView{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->m:Lcom/android/wm/shell/bubbles/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
