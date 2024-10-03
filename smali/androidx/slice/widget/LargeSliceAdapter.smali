.class public Landroidx/slice/widget/LargeSliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;,
        Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;,
        Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;",
        ">;",
        "Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;"
    }
.end annotation


# static fields
.field static final HEADER_INDEX:I = 0x0

.field static final TYPE_DEFAULT:I = 0x1

.field static final TYPE_GRID:I = 0x3

.field static final TYPE_HEADER:I = 0x2

.field static final TYPE_MESSAGE:I = 0x4

.field static final TYPE_MESSAGE_LOCAL:I = 0x5


# instance fields
.field mAllowTwoLines:Z

.field mColor:I

.field final mContext:Landroid/content/Context;

.field private final mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

.field mInsetBottom:I

.field mInsetEnd:I

.field mInsetStart:I

.field mInsetTop:I

.field mLastUpdated:J

.field mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field mMaxSmallHeight:I

.field mParent:Landroidx/slice/widget/SliceView;

.field mShowLastUpdated:Z

.field mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mSlices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mTemplateView:Landroidx/slice/widget/LargeTemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-direct {v0}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private inflateForType(I)Landroid/view/View;
    .locals 3

    new-instance v0, Landroidx/slice/widget/RowView;

    iget-object v1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/slice/widget/RowView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Landroidx/slice/view/R$layout;->abc_slice_message_local:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Landroidx/slice/view/R$layout;->abc_slice_message:I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Landroidx/slice/view/R$layout;->abc_slice_grid:I

    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private notifyHeaderChanged()V
    .locals 1

    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget-wide p0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mId:J

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget p0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mType:I

    return p0
.end method

.method public getLoadingActions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->onBindViewHolder(Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;I)V
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->bind(Landroidx/slice/SliceItem;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
    .locals 2

    invoke-direct {p0, p2}, Landroidx/slice/widget/LargeSliceAdapter;->inflateForType(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;

    invoke-direct {p2, p0, p1}, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;-><init>(Landroidx/slice/widget/LargeSliceAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onSliceActionLoading(Landroidx/slice/SliceItem;I)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result p1

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mAllowTwoLines:Z

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public setInsets(IIII)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetStart:I

    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetTop:I

    iput p3, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetEnd:I

    iput p4, p0, Landroidx/slice/widget/LargeSliceAdapter;->mInsetBottom:I

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    :cond_0
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mMaxSmallHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mMaxSmallHeight:I

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    :cond_0
    return-void
.end method

.method public setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/LargeTemplateView;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    iput-object p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/slice/widget/LargeSliceAdapter;->notifyHeaderChanged()V

    return-void
.end method

.method public setSliceItems(Ljava/util/List;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-virtual {v0}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->resetUsage()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    iget-object v1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSlices:Ljava/util/List;

    new-instance v2, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter;->mIdGen:Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;

    invoke-direct {v2, v0, v3, p3}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;-><init>(Landroidx/slice/SliceItem;Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iput p2, p0, Landroidx/slice/widget/LargeSliceAdapter;->mColor:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
