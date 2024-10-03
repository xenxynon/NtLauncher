.class public Lq4/i;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq4/i$a;
    }
.end annotation


# static fields
.field public static final b:Lq4/i$a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq4/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq4/i$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lq4/i;->b:Lq4/i$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lq4/i;->a:I

    return-void
.end method

.method private final b(IF)I
    .locals 0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public a(F)I
    .locals 1

    iget v0, p0, Lq4/i;->a:I

    invoke-direct {p0, v0, p1}, Lq4/i;->b(IF)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, p3}, Lq4/i;->a(F)I

    move-result p0

    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    move p3, p0

    goto :goto_4

    :cond_4
    move p3, v1

    :goto_4
    iput p3, p1, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_7

    goto :goto_6

    :cond_5
    if-eqz p2, :cond_6

    move p2, p0

    goto :goto_5

    :cond_6
    move p2, v1

    :goto_5
    iput p2, p1, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_7

    :goto_6
    move v1, p0

    :cond_7
    iput v1, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
