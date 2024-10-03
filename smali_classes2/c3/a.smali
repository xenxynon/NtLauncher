.class public final Lc3/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/a$c;,
        Lc3/a$b;
    }
.end annotation


# static fields
.field public static final p:Lc3/a$b;

.field private static final q:Landroid/view/animation/PathInterpolator;

.field private static final r:Landroid/view/animation/PathInterpolator;

.field private static final s:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Lcom/android/launcher3/model/data/FolderInfo;

.field private final h:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/android/launcher3/views/ActivityContext;

.field private final j:Ln5/e;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private o:La4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc3/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc3/a$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lc3/a;->p:Lc3/a$b;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lc3/a;->q:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lc3/a;->r:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lc3/a$a;

    invoke-direct {v0}, Lc3/a$a;-><init>()V

    sput-object v0, Lc3/a;->s:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/model/data/FolderInfo;",
            "Ly5/l<",
            "-",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p3, p0, Lc3/a;->h:Ly5/l;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "lookupContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lc3/a;->i:Lcom/android/launcher3/views/ActivityContext;

    new-instance p1, Lc3/a$e;

    invoke-direct {p1, p0}, Lc3/a$e;-><init>(Lc3/a;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lc3/a;->j:Ln5/e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc3/a;->k:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc3/a;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc3/a;->m:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc3/a;->n:Ljava/util/List;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    invoke-direct {p0}, Lc3/a;->H()La4/b;

    move-result-object p1

    iput-object p1, p0, Lc3/a;->o:La4/b;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Ly5/l;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc3/a;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Ly5/l;)V

    return-void
.end method

.method private final A()V
    .locals 7

    iget-object v0, p0, Lc3/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    invoke-interface {v0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    check-cast v2, Landroid/view/View;

    iget-object v2, p0, Lc3/a;->m:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p0, v1, v4, v5, v6}, Lc3/a;->k(Lc3/a;IFILjava/lang/Object;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final B()V
    .locals 2

    iget-object v0, p0, Lc3/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc3/a;->n:Ljava/util/List;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object p0

    sget-object v1, Lc3/a$i;->g:Lc3/a$i;

    invoke-static {p0, v1}, Lg6/j;->j(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p0

    sget-object v1, Lc3/a$j;->g:Lc3/a$j;

    invoke-static {p0, v1}, Lg6/j;->o(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p0

    invoke-static {v0, p0}, Lo5/j;->s(Ljava/util/Collection;Lg6/g;)Z

    return-void
.end method

.method private final C()V
    .locals 2

    iget-object v0, p0, Lc3/a;->l:Ljava/util/List;

    invoke-static {v0}, Lo5/j;->A(Ljava/lang/Iterable;)Lg6/g;

    move-result-object v0

    sget-object v1, Lc3/a$k;->g:Lc3/a$k;

    invoke-static {v0, v1}, Lg6/j;->j(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object v0

    invoke-interface {v0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc3/a;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final D(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc3/a;->C()V

    invoke-direct {p0}, Lc3/a;->getMaxItemsPerPage()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lc3/a;->o:La4/b;

    invoke-virtual {v1}, La4/b;->g()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Le6/e;->e(II)I

    move-result v1

    new-instance v2, Le6/d;

    invoke-direct {v2, v0, v1}, Le6/d;-><init>(II)V

    invoke-static {p2, v2}, Lo5/j;->X(Ljava/util/List;Le6/d;)Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lc3/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lc3/a;->l:Ljava/util/List;

    invoke-direct {p0}, Lc3/a;->g()Lcom/nothing/launcher/views/NTBubbleTextView;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lc3/a;->o:La4/b;

    iget-object v5, p0, Lc3/a;->l:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move v7, p1

    invoke-static/range {v3 .. v9}, La4/b;->d(La4/b;Ljava/util/List;Ljava/util/List;Ly5/l;IILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScrollX(I)V

    return-void
.end method

.method public static synthetic G(Lc3/a;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lc3/a;->F(Z)V

    return-void
.end method

.method private final H()La4/b;
    .locals 3

    iget-object v0, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    const/4 v1, 0x1

    const-string v2, "context"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, La4/f;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, La4/f;-><init>(Lc3/a;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, La4/e;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0, p0, v1, v2}, La4/e;-><init>(Lc3/a;Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    goto :goto_0

    :cond_1
    new-instance v0, La4/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0, p0, v1, v2}, La4/c;-><init>(Lc3/a;Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    goto :goto_0

    :cond_2
    new-instance v0, La4/h;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0, p0, v1, v2}, La4/h;-><init>(Lc3/a;Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    :goto_0
    return-object v0
.end method

.method public static final synthetic a(Lc3/a;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lc3/a;->i:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public static final synthetic b()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lc3/a;->r:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic c()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lc3/a;->q:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic d(Lc3/a;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lc3/a;->y(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static final synthetic e(Lc3/a;)V
    .locals 0

    invoke-direct {p0}, Lc3/a;->C()V

    return-void
.end method

.method private final g()Lcom/nothing/launcher/views/NTBubbleTextView;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e0038

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.views.NTBubbleTextView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/nothing/launcher/views/NTBubbleTextView;

    return-object p0
.end method

.method private final getMaxItemsPerPage()I
    .locals 0

    iget-object p0, p0, Lc3/a;->j:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic k(Lc3/a;IFILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {p0, p1, p2}, Lc3/a;->j(IF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private final o()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method private final p()V
    .locals 15

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lc3/a;->o:La4/b;

    const-string v2, "null cannot be cast to non-null type com.nothing.launcher.manager.CirclePreviewManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La4/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, La4/c;->w(II)V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v2

    invoke-interface {v2}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    move-object v6, v4

    check-cast v6, Landroid/view/View;

    iget-object v4, p0, Lc3/a;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type com.nothing.launcher.folder.BigFolderIconContainer.LayoutParams"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lc3/a$c;

    invoke-direct {p0, v6}, Lc3/a;->r(Landroid/view/View;)V

    iget-object v7, p0, Lc3/a;->n:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lc3/a$c;->d()I

    move-result v7

    invoke-virtual {v4}, Lc3/a$c;->e()I

    move-result v8

    invoke-virtual {v4}, Lc3/a$c;->d()I

    move-result v11

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v11, v12

    invoke-virtual {v4}, Lc3/a$c;->e()I

    move-result v12

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v12, v13

    invoke-direct {v3, v7, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-direct {v7, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    invoke-direct {v8, v3, v11}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4}, Lc3/a$c;->b()D

    move-result-wide v11

    invoke-virtual {v1}, La4/c;->z()I

    move-result v13

    new-instance v14, Lc3/a$d;

    invoke-direct {v14, p0, v0}, Lc3/a$d;-><init>(Lc3/a;Landroid/animation/AnimatorSet;)V

    invoke-static/range {v6 .. v14}, Lb3/x;->f(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Point;DDILy5/l;)V

    :cond_1
    move v3, v5

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lc3/a;->n:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private final q(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.folder.BigFolderIconContainer.LayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc3/a$c;

    invoke-virtual {p0}, Lc3/a$c;->d()I

    move-result v0

    invoke-virtual {p0}, Lc3/a$c;->e()I

    move-result v1

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v2, v0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private final r(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.nothing.launcher.folder.BigFolderIconContainer.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lc3/a$c;

    iget-object v1, p0, Lc3/a;->o:La4/b;

    invoke-direct {p0}, Lc3/a;->o()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, La4/b;->y(Lc3/a$c;Z)V

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private final s(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc3/a;->o:La4/b;

    instance-of p1, p1, La4/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p0, p0, Lc3/a;->o:La4/b;

    invoke-virtual {p0}, La4/b;->g()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final t(Landroid/animation/AnimatorSet;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lc3/a;->o:La4/b;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, La4/b;->w(II)V

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    invoke-interface {v0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v13, v12, 0x1

    if-gez v12, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    move-object v14, v0

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.nothing.launcher.folder.BigFolderIconContainer.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lc3/a$c;

    invoke-direct {v8, v14}, Lc3/a;->r(Landroid/view/View;)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lc3/a$c;->d()I

    move-result v1

    invoke-virtual {v0}, Lc3/a$c;->e()I

    move-result v2

    invoke-virtual {v0}, Lc3/a$c;->d()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lc3/a$c;->e()I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-direct {v15, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v8, Lc3/a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v8, Lc3/a;->o:La4/b;

    invoke-virtual {v2}, La4/b;->g()I

    move-result v2

    invoke-static {v1, v2}, Le6/e;->e(II)I

    move-result v1

    const/4 v7, 0x2

    if-ge v12, v1, :cond_1

    iget-object v1, v8, Lc3/a;->m:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/graphics/RectF;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v2, v7, [F

    aput v1, v2, v11

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v14, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "scaleAnim"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lc3/a;->z(Lc3/a;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "alphaAnim"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v17, v7

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v7}, Lc3/a;->z(Lc3/a;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v15}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    :goto_1
    invoke-virtual {v15}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    invoke-virtual {v0}, Ln5/k;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ln5/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v0, v8, Lc3/a;->o:La4/b;

    invoke-virtual {v0}, La4/b;->g()I

    move-result v0

    if-ge v12, v0, :cond_2

    const/4 v4, 0x0

    new-instance v5, Lc3/a$f;

    invoke-direct {v5, v8, v9}, Lc3/a$f;-><init>(Lc3/a;Landroid/animation/AnimatorSet;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v14

    invoke-static/range {v1 .. v7}, Lb3/x;->i(Landroid/view/View;FFZLy5/l;ILjava/lang/Object;)V

    :cond_2
    move v12, v13

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lc3/a$g;

    invoke-direct {v0, v8}, Lc3/a$g;-><init>(Lc3/a;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic x(Lc3/a;Landroid/animation/AnimatorSet;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lc3/a;->w(Landroid/animation/AnimatorSet;I)V

    return-void
.end method

.method private final y(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p2, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method static synthetic z(Lc3/a;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-wide/16 p3, 0xc8

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    sget-object p5, Lc3/a;->q:Landroid/view/animation/PathInterpolator;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lc3/a;->y(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final E(Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemCheck"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc3/a;->k:Ljava/util/List;

    invoke-static {p0}, Lo5/j;->A(Ljava/lang/Iterable;)Lg6/g;

    move-result-object p0

    new-instance v0, Lc3/a$l;

    invoke-direct {v0, p1}, Lc3/a$l;-><init>(Ljava/util/function/Predicate;)V

    invoke-static {p0, v0}, Lg6/j;->j(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p0

    invoke-interface {p0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    const-string v2, "it.icon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-virtual {v3}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v4

    if-eq v4, v3, :cond_1

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final F(Z)V
    .locals 9

    iget-object v0, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const-string v1, "info.contents"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc3/a;->o:La4/b;

    invoke-virtual {v1}, La4/b;->g()I

    move-result v1

    invoke-static {v0, v1}, Lo5/j;->a0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc3/a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lc3/a;->k:Ljava/util/List;

    invoke-static {v0}, Lo5/j;->x(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lc3/a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lc3/a;->k:Ljava/util/List;

    invoke-direct {p0}, Lc3/a;->g()Lcom/nothing/launcher/views/NTBubbleTextView;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lc3/a;->s(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lc3/a;->B()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lc3/a;->o:La4/b;

    iget-object v4, p0, Lc3/a;->k:Ljava/util/List;

    iget-object v5, p0, Lc3/a;->h:Ly5/l;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, La4/b;->d(La4/b;Ljava/util/List;Ljava/util/List;Ly5/l;IILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lc3/a;->s(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iget-object v0, p0, Lc3/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_3

    invoke-direct {p0}, Lc3/a;->p()V

    :cond_3
    return-void
.end method

.method public final f(Ljava/util/List;ZFLy5/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;ZF",
            "Ly5/p<",
            "-",
            "Landroid/animation/Animator;",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "childPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc3/a;->o:La4/b;

    invoke-virtual {p0, p1, p2, p3, p4}, La4/b;->b(Ljava/util/List;ZFLy5/p;)V

    return-void
.end method

.method public final getAllPreviewSize()I
    .locals 0

    iget-object p0, p0, Lc3/a;->o:La4/b;

    invoke-virtual {p0}, La4/b;->g()I

    move-result p0

    return p0
.end method

.method public final getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 0

    iget-object p0, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public final getOnLongClick()Ly5/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/l<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc3/a;->h:Ly5/l;

    return-object p0
.end method

.method public final h()Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lc3/a;->r(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.folder.BigFolderIconContainer.LayoutParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc3/a$c;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lc3/a$c;->d()I

    move-result v1

    invoke-virtual {p0}, Lc3/a$c;->e()I

    move-result v2

    invoke-virtual {p0}, Lc3/a$c;->d()I

    move-result v3

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lc3/a$c;->e()I

    move-result v4

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final i(Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    iget-object p0, p0, Lc3/a;->o:La4/b;

    invoke-virtual {p0}, La4/b;->g()I

    move-result p0

    invoke-static {v0, p0}, Lg6/j;->q(Lg6/g;I)Lg6/g;

    move-result-object p0

    invoke-interface {p0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final j(IF)Landroid/graphics/RectF;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-string p0, "BigFolderIconContainer"

    const-string p1, "getChildPotions: i more than the childCount"

    invoke-static {p0, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method public final l(I)F
    .locals 0

    iget-object p0, p0, Lc3/a;->o:La4/b;

    invoke-virtual {p0, p1}, La4/b;->j(I)F

    move-result p0

    return p0
.end method

.method public final m(I[I)F
    .locals 5

    const-string v0, "center"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "getChildAt(i)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc3/a;->r(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.nothing.launcher.folder.BigFolderIconContainer.LayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lc3/a$c;

    invoke-virtual {v0}, Lc3/a$c;->d()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p2, v2

    invoke-virtual {v0}, Lc3/a$c;->e()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    aput v2, p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    aput v0, p2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    aput v0, p2, v1

    :goto_0
    invoke-virtual {p0, p1}, Lc3/a;->l(I)F

    move-result p0

    return p0
.end method

.method public final n(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "getChildAt(i)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 p4, 0x8

    if-eq p3, p4, :cond_0

    invoke-direct {p0, p2}, Lc3/a;->q(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iget-object v0, p0, Lc3/a;->o:La4/b;

    invoke-virtual {v0, p1, p2}, La4/b;->w(II)V

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p2}, Lc3/a;->r(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setForceHideDot(Z)V
    .locals 0

    iget-object p0, p0, Lc3/a;->o:La4/b;

    invoke-virtual {p0, p1}, La4/b;->x(Z)V

    return-void
.end method

.method public final u()V
    .locals 1

    iget-object p0, p0, Lc3/a;->o:La4/b;

    instance-of v0, p0, La4/e;

    if-eqz v0, :cond_0

    check-cast p0, La4/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, La4/e;->z()V

    :cond_1
    return-void
.end method

.method public final v(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-direct {p0, p1, p2}, Lc3/a;->D(ILjava/util/List;)V

    sget-object p1, Lc3/a;->s:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    aput v1, p2, v0

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p2, Lc3/a$h;

    invoke-direct {p2, p0}, Lc3/a$h;-><init>(Lc3/a;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScrollX(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w(Landroid/animation/AnimatorSet;I)V
    .locals 4

    invoke-direct {p0}, Lc3/a;->H()La4/b;

    move-result-object v0

    iput-object v0, p0, Lc3/a;->o:La4/b;

    iget-object v0, p0, Lc3/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lc3/a;->A()V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lc3/a;->G(Lc3/a;ZILjava/lang/Object;)V

    iget-object v1, p0, Lc3/a;->g:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lc3/a;->t(Landroid/animation/AnimatorSet;)V

    :cond_1
    return-void
.end method
