.class public final Lcom/nothing/launcher/folder/customisation/h;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/nothing/launcher/folder/customisation/h;->a:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    if-nez p3, :cond_8

    if-lez p4, :cond_2

    add-int/lit8 p3, v0, -0x1

    if-ge p4, p3, :cond_2

    iget p0, p0, Lcom/nothing/launcher/folder/customisation/h;->a:I

    div-int/lit8 p2, p0, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p0, p0, 0x2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_2
    const/4 p3, 0x0

    if-nez p4, :cond_6

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/nothing/launcher/folder/customisation/h;->a:I

    div-int/lit8 p4, p4, 0x2

    goto :goto_1

    :cond_3
    move p4, p3

    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget p0, p0, Lcom/nothing/launcher/folder/customisation/h;->a:I

    div-int/lit8 p3, p0, 0x2

    :cond_5
    :goto_3
    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ne p4, v0, :cond_8

    if-eqz p2, :cond_7

    move p4, p3

    goto :goto_4

    :cond_7
    iget p4, p0, Lcom/nothing/launcher/folder/customisation/h;->a:I

    div-int/lit8 p4, p4, 0x2

    :goto_4
    iput p4, p1, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_8
    :goto_5
    return-void
.end method
