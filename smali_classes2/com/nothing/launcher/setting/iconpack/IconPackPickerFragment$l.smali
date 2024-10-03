.class final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/util/List<",
        "+",
        "Lr4/a;",
        ">;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {v0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->s(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lq4/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "iconPackListAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    move-result-object p1

    const-string v0, "binding"

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->iconPackListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    iget-object p1, p1, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->iconPackListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {v3}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->u(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Ls4/b;

    move-result-object v3

    invoke-virtual {v3}, Ls4/b;->l()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    iget-object p1, p1, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->iconPackListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {v3}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->u(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Ls4/b;

    move-result-object v3

    invoke-virtual {v3}, Ls4/b;->l()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;

    invoke-static {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->containerIconPackSwitch:Landroid/widget/LinearLayout;

    const-string p1, "binding.containerIconPackSwitch"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p1

    invoke-virtual {p1}, Lo3/b;->u()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;->a(Ljava/util/List;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
