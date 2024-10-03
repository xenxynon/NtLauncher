.class public final La4/c;
.super La4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/c$b;
    }
.end annotation


# static fields
.field public static final w:La4/c$b;


# instance fields
.field private final m:Lcom/android/launcher3/model/data/FolderInfo;

.field private final n:Landroid/graphics/Point;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:I

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/c$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, La4/c;->w:La4/c$b;

    return-void
.end method

.method public constructor <init>(Lc3/a;Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, La4/b;-><init>(Lc3/a;Landroid/content/Context;)V

    iput-object p3, p0, La4/c;->m:Lcom/android/launcher3/model/data/FolderInfo;

    new-instance p2, La4/c$a;

    invoke-direct {p2}, La4/c$a;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, La4/c;->n:Landroid/graphics/Point;

    invoke-virtual {p0}, La4/b;->o()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, La4/b;->s()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ab

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La4/b;->s()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700aa

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, La4/c;->o:I

    sget-object p2, Lz4/g;->a:Lz4/g;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lz4/g;->c(F)F

    move-result p1

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    iput p1, p0, La4/c;->p:I

    invoke-virtual {p0}, La4/c;->h()I

    move-result p1

    iput p1, p0, La4/c;->q:I

    const/4 p1, 0x6

    iput p1, p0, La4/c;->r:I

    iput p1, p0, La4/c;->s:I

    const/4 p1, 0x1

    iput p1, p0, La4/c;->t:I

    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;Ljava/util/List;Ly5/l;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            ">;",
            "Ly5/l<",
            "-",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, La4/b;->c(Ljava/util/List;Ljava/util/List;Ly5/l;I)V

    iget-object p1, p0, La4/c;->m:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, La4/b;->r()I

    move-result p2

    mul-int/2addr p2, p4

    sub-int/2addr p1, p2

    const/4 p2, 0x6

    if-le p1, p2, :cond_0

    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, La4/b;->l()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p3, Lc3/a$c;

    invoke-direct {p3}, Lc3/a$c;-><init>()V

    invoke-virtual {p3, p4}, Lc3/a$c;->f(I)V

    invoke-virtual {p3, p2}, Lc3/a$c;->h(I)V

    const p2, 0x7f0802b8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object p2, Lz3/d;->a:Lz3/d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lz3/d;->f(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, La4/c;->r:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, La4/c;->p:I

    return p0
.end method

.method public m()I
    .locals 2

    invoke-super {p0}, La4/b;->m()I

    move-result v0

    invoke-virtual {p0}, La4/c;->h()I

    move-result v1

    iget p0, p0, La4/c;->o:I

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method public p()I
    .locals 0

    iget p0, p0, La4/c;->s:I

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, La4/c;->t:I

    return p0
.end method

.method public u()I
    .locals 0

    iget p0, p0, La4/c;->q:I

    return p0
.end method

.method public w(II)V
    .locals 1

    iget-object v0, p0, La4/c;->n:Landroid/graphics/Point;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, La4/c;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, La4/c;->u:I

    iget-object p2, p0, La4/c;->n:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, p1

    invoke-virtual {p0}, La4/c;->m()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, La4/c;->v:I

    return-void
.end method

.method public y(Lc3/a$c;Z)V
    .locals 13

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, La4/c;->h()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, La4/c;->h()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, La4/b;->k()Lc3/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lc3/a$c;->a()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/2addr v0, v1

    iget-object v1, p0, La4/c;->m:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x6

    invoke-static {v1, v3}, Le6/e;->e(II)I

    move-result v1

    const-string v4, "CirclePreviewManager"

    if-nez v1, :cond_1

    const-string p0, "setup for curNum is 0 !!!"

    :goto_1
    invoke-static {v4, p0}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result v5

    if-ge v5, v3, :cond_5

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    const/4 p2, 0x2

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-ne v1, p2, :cond_3

    const-wide v7, 0x3fe921fb54442d18L    # 0.7853981633974483

    int-to-double v9, v2

    mul-double/2addr v9, v7

    add-double/2addr v5, v9

    :cond_3
    invoke-virtual {p1}, Lc3/a$c;->c()I

    move-result p2

    int-to-double v7, p2

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v11, v1

    div-double/2addr v9, v11

    mul-double/2addr v7, v9

    int-to-double v1, v2

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Lc3/a$c;->g(D)V

    invoke-virtual {p1}, Lc3/a$c;->b()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "setup for radian is NaN value !!!"

    goto :goto_1

    :cond_4
    iget-object p2, p0, La4/c;->n:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-double v1, p2

    iget p2, p0, La4/c;->v:I

    int-to-double v3, p2

    invoke-virtual {p1}, Lc3/a$c;->b()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, La6/a;->a(D)I

    move-result p2

    add-int/2addr v0, p2

    iget p2, p0, La4/c;->u:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lc3/a$c;->i(I)V

    iget-object p2, p0, La4/c;->n:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-double v0, p2

    iget p2, p0, La4/c;->v:I

    int-to-double v2, p2

    invoke-virtual {p1}, Lc3/a$c;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, La6/a;->a(D)I

    move-result p2

    goto :goto_3

    :cond_5
    iget-object p2, p0, La4/c;->n:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, p2

    iget p2, p0, La4/c;->u:I

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lc3/a$c;->i(I)V

    iget-object p2, p0, La4/c;->n:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    :goto_3
    iget p0, p0, La4/c;->u:I

    sub-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lc3/a$c;->j(I)V

    return-void
.end method

.method public final z()I
    .locals 0

    iget p0, p0, La4/c;->v:I

    return p0
.end method
