.class public final Lf3/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lf3/g;


# direct methods
.method public constructor <init>(Lf3/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf3/g$a;->a:Lf3/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.nothing.launcher.folder.emoji.view.EmojiRecyclerViewAdapter.EmojiRecyclerViewItemHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lf3/d$a;

    invoke-virtual {p1}, Lf3/d$a;->b()Landroid/widget/TextView;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.String"

    if-eqz p2, :cond_0

    iget-object v0, p0, Lf3/g$a;->a:Lf3/g;

    invoke-virtual {v0}, Lf3/g;->a()Lf3/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Lf3/g$b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lf3/d$a;->a()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lf3/g$a;->a:Lf3/g;

    invoke-virtual {p0}, Lf3/g;->a()Lf3/g$b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lf3/g$b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
