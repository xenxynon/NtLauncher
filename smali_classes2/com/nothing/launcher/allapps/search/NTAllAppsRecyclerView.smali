.class public Lcom/nothing/launcher/allapps/search/NTAllAppsRecyclerView;
.super Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getScrollBarBottom()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07043f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getScrollBarTop()I
    .locals 2

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAllAppsRecyclerView;->getScrollBarBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07006f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getScrollbarTrackHeight()I
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/nothing/launcher/allapps/search/NTAllAppsRecyclerView;->getScrollBarBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
