.class public Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/LargeSliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceViewHolder"
.end annotation


# instance fields
.field public final mSliceChildView:Landroidx/slice/widget/SliceChildView;

.field final synthetic this$0:Landroidx/slice/widget/LargeSliceAdapter;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/LargeSliceAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    instance-of p1, p2, Landroidx/slice/widget/SliceChildView;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/slice/widget/SliceChildView;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    return-void
.end method


# virtual methods
.method bind(Landroidx/slice/SliceItem;I)V
    .locals 11

    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {p1}, Landroidx/slice/widget/ListContent;->isValidHeader(Landroidx/slice/SliceItem;)Z

    move-result v9

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v3, v3, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    const/4 v10, 0x2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v5, v5, Landroidx/slice/widget/LargeSliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {v4, v5}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v4, v3}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v4, v4, Landroidx/slice/widget/LargeSliceAdapter;->mMaxSmallHeight:I

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setMaxSmallHeight(I)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v4, v4, Landroidx/slice/widget/LargeSliceAdapter;->mColor:I

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v4, v4, Landroidx/slice/widget/LargeSliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v2, :cond_3

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-boolean v4, v4, Landroidx/slice/widget/LargeSliceAdapter;->mShowLastUpdated:Z

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v2, :cond_4

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-wide v4, v4, Landroidx/slice/widget/LargeSliceAdapter;->mLastUpdated:J

    goto :goto_3

    :cond_4
    const-wide/16 v4, -0x1

    :goto_3
    invoke-virtual {v3, v4, v5}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    if-nez p2, :cond_5

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v3, v3, Landroidx/slice/widget/LargeSliceAdapter;->mInsetTop:I

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v4}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne p2, v4, :cond_6

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v4, v4, Landroidx/slice/widget/LargeSliceAdapter;->mInsetBottom:I

    goto :goto_5

    :cond_6
    move v4, v1

    :goto_5
    iget-object v5, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v6, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget v7, v6, Landroidx/slice/widget/LargeSliceAdapter;->mInsetStart:I

    iget v6, v6, Landroidx/slice/widget/LargeSliceAdapter;->mInsetEnd:I

    invoke-virtual {v5, v7, v3, v6, v4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    instance-of v4, v3, Landroidx/slice/widget/RowView;

    if-eqz v4, :cond_8

    check-cast v3, Landroidx/slice/widget/RowView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v4}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v4

    if-ne v4, v0, :cond_7

    move v4, v0

    goto :goto_6

    :cond_7
    move v4, v1

    :goto_6
    invoke-virtual {v3, v4}, Landroidx/slice/widget/RowView;->setSingleItem(Z)V

    :cond_8
    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v4, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-boolean v4, v4, Landroidx/slice/widget/LargeSliceAdapter;->mAllowTwoLines:Z

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v2}, Landroidx/slice/widget/LargeSliceAdapter;->getItemCount()I

    move-result v7

    iget-object v2, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v8, v2, Landroidx/slice/widget/LargeSliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    move-object v4, p1

    move v5, v9

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/slice/widget/SliceChildView;->setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V

    new-array v2, v10, [I

    iget-object v3, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v4, v3, Landroidx/slice/widget/LargeSliceAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v3, Landroidx/slice/widget/LargeSliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-static {v4, p1, v9, v3}, Landroidx/slice/widget/ListContent;->getRowType(Landroid/content/Context;Landroidx/slice/SliceItem;ZLjava/util/List;)I

    move-result p1

    aput p1, v2, v1

    aput p2, v2, v0

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_a
    :goto_8
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceView;->setClickInfo([I)V

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object p0, p0, Landroidx/slice/widget/LargeSliceAdapter;->mTemplateView:Landroidx/slice/widget/LargeTemplateView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/slice/widget/LargeTemplateView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
