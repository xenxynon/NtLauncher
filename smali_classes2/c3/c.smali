.class public final Lc3/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/c$g;
    }
.end annotation


# static fields
.field public static final m:Lc3/c$g;

.field private static final n:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:F

.field private final i:Ln5/e;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/RectF;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc3/c$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc3/c$g;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lc3/c;->m:Lc3/c$g;

    new-instance v0, Lc3/c$c;

    invoke-direct {v0}, Lc3/c$c;-><init>()V

    sput-object v0, Lc3/c;->n:Landroid/util/FloatProperty;

    new-instance v0, Lc3/c$d;

    invoke-direct {v0}, Lc3/c$d;-><init>()V

    sput-object v0, Lc3/c;->o:Landroid/util/FloatProperty;

    new-instance v0, Lc3/c$b;

    invoke-direct {v0}, Lc3/c$b;-><init>()V

    sput-object v0, Lc3/c;->p:Landroid/util/FloatProperty;

    new-instance v0, Lc3/c$e;

    invoke-direct {v0}, Lc3/c$e;-><init>()V

    sput-object v0, Lc3/c;->q:Landroid/util/FloatProperty;

    new-instance v0, Lc3/c$f;

    invoke-direct {v0}, Lc3/c$f;-><init>()V

    sput-object v0, Lc3/c;->r:Landroid/util/FloatProperty;

    new-instance v0, Lc3/c$a;

    invoke-direct {v0}, Lc3/c$a;-><init>()V

    sput-object v0, Lc3/c;->s:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc3/c;->a:F

    iput v0, p0, Lc3/c;->b:F

    const/16 v0, 0xff

    iput v0, p0, Lc3/c;->g:I

    new-instance v0, Lc3/c$h;

    invoke-direct {v0, p1}, Lc3/c$h;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lc3/c;->i:Ln5/e;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc3/c;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lc3/c;->k:Landroid/graphics/RectF;

    invoke-direct {p0}, Lc3/c;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lc3/c;->h:F

    return-void
.end method

.method public static final synthetic a()Landroid/util/IntProperty;
    .locals 1

    sget-object v0, Lc3/c;->s:Landroid/util/IntProperty;

    return-object v0
.end method

.method public static final synthetic b(Lc3/c;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lc3/c;->j:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic c()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lc3/c;->p:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic d(Lc3/c;)F
    .locals 0

    iget p0, p0, Lc3/c;->h:F

    return p0
.end method

.method public static final synthetic e()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lc3/c;->n:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic f()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lc3/c;->o:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic g(Lc3/c;)F
    .locals 0

    iget p0, p0, Lc3/c;->a:F

    return p0
.end method

.method public static final synthetic h(Lc3/c;)F
    .locals 0

    iget p0, p0, Lc3/c;->b:F

    return p0
.end method

.method public static final synthetic i()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lc3/c;->q:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic j()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lc3/c;->r:Landroid/util/FloatProperty;

    return-object v0
.end method

.method public static final synthetic k(Lc3/c;)F
    .locals 0

    iget p0, p0, Lc3/c;->e:F

    return p0
.end method

.method public static final synthetic l(Lc3/c;)F
    .locals 0

    iget p0, p0, Lc3/c;->f:F

    return p0
.end method

.method public static final synthetic m(Lc3/c;F)V
    .locals 0

    iput p1, p0, Lc3/c;->h:F

    return-void
.end method

.method public static final synthetic n(Lc3/c;F)V
    .locals 0

    iput p1, p0, Lc3/c;->a:F

    return-void
.end method

.method public static final synthetic o(Lc3/c;F)V
    .locals 0

    iput p1, p0, Lc3/c;->b:F

    return-void
.end method

.method public static final synthetic p(Lc3/c;F)V
    .locals 0

    iput p1, p0, Lc3/c;->e:F

    return-void
.end method

.method public static final synthetic q(Lc3/c;F)V
    .locals 0

    iput p1, p0, Lc3/c;->f:F

    return-void
.end method

.method private final r()I
    .locals 0

    iget-object p0, p0, Lc3/c;->i:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lc3/c;->k:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v0, p0, Lc3/c;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc3/c;->k:Landroid/graphics/RectF;

    iget v1, p0, Lc3/c;->a:F

    iget v2, p0, Lc3/c;->b:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc3/c;->k:Landroid/graphics/RectF;

    iget v1, p0, Lc3/c;->a:F

    iget v2, p0, Lc3/c;->b:F

    iget v3, p0, Lc3/c;->c:F

    iget v4, p0, Lc3/c;->d:F

    invoke-static {v0, v1, v2, v3, v4}, Lw2/b;->a(Landroid/graphics/RectF;FFFF)V

    :goto_0
    iget-object v0, p0, Lc3/c;->k:Landroid/graphics/RectF;

    iget v1, p0, Lc3/c;->e:F

    iget v2, p0, Lc3/c;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lc3/c;->k:Landroid/graphics/RectF;

    iget v1, p0, Lc3/c;->h:F

    iget-object p0, p0, Lc3/c;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final s(FF)V
    .locals 3

    iget-boolean v0, p0, Lc3/c;->l:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lc3/c;->c:F

    cmpg-float v0, v0, p1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lc3/c;->d:F

    cmpg-float v0, v0, p2

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    if-nez v2, :cond_3

    :cond_2
    iput-boolean v1, p0, Lc3/c;->l:Z

    iput p1, p0, Lc3/c;->c:F

    iput p2, p0, Lc3/c;->d:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lc3/c;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lc3/c;->g:I

    iget-object v0, p0, Lc3/c;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
