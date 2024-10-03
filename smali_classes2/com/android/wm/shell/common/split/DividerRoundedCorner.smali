.class public Lcom/android/wm/shell/common/split/DividerRoundedCorner;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;
    }
.end annotation


# instance fields
.field private final g:I

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Point;

.field private j:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

.field private k:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

.field private l:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

.field private m:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lu0/c;->h:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->g:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->h:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lu0/b;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setFlags(I)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic a(Lcom/android/wm/shell/common/split/DividerRoundedCorner;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/wm/shell/common/split/DividerRoundedCorner;)I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->g:I

    return p0
.end method

.method private c()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;-><init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->j:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    new-instance v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;-><init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->k:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    new-instance v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;-><init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->l:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    new-instance v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;-><init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;I)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->m:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->j:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->a(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->j:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->b(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->k:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->a(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->k:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->b(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->l:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->a(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->l:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->b(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->m:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->a(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->i:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->m:Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;

    invoke-static {v0}, Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;->b(Lcom/android/wm/shell/common/split/DividerRoundedCorner$a;)Landroid/graphics/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
